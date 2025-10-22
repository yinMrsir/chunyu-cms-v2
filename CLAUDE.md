# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

淳渔CMS V2 (Chunyu CMS V2) is a modern video content management system designed for rapid development of video websites. It's a complete overhaul from V1, replacing NestJS with Nuxt 3 for both frontend and backend functionality in a monorepo structure.

## Technology Stack

- **Frontend**: Vue 3 + Element Plus + TypeScript (admin), Nuxt 3 + UnoCSS (web)
- **Backend**: Nuxt 3 with Nitro server engine
- **Database**: MySQL 8.0+ with Drizzle ORM
- **Cache**: Redis for session storage and caching
- **Package Manager**: pnpm (8.9.2+)
- **Node.js**: 18.16.0+ (managed by Volta)

## Development Commands

### Web Application (chunyu-cms-web/)

```bash
cd chunyu-cms-web
pnpm dev              # Start development server on localhost:3000
pnpm dev:pro          # Start with production environment config
pnpm build            # Build for production
pnpm preview          # Preview production build
pnpm lint             # Run ESLint and Prettier checks
pnpm lintfix          # Auto-fix linting issues
pnpm generate         # Generate Drizzle ORM migration files
pnpm sql-push         # Push schema changes to database
pnpm start            # Build and restart PM2 process
pnpm deploy-update    # Full deployment process
```

### Admin Panel (chunyu-cms-admin/)

```bash
cd chunyu-cms-admin
pnpm dev              # Start admin development server on localhost:4000
pnpm build:prod       # Build admin for dual-service deployment
pnpm build:single     # Build admin for single-service deployment
```

### Repository-wide Commands

```bash
node bin/deploy.js    # Automated deployment script (single-service mode)
```

## Project Architecture

### Monorepo Structure

- **chunyu-cms-web/**: Nuxt 3 application (public website + API backend)
- **chunyu-cms-admin/**: Vue 3 + Element Plus admin panel

### Deployment Models

1. **Single Service Mode**: Admin panel built into Nuxt app (accessible via `/admin/`)
2. **Dual Service Mode**: Separate admin panel running on port 4000

### Database Architecture

The system uses Drizzle ORM with modular schema structure:

**System Modules** (`server/db/schema/system/`):
- User management with RBAC (roles, departments, posts)
- System configuration and file management
- Job scheduling and login logs

**Business Modules**:
- `basic/` - Countries, languages, genres, banners, columns
- `movie/` - Movies, actors, videos, ratings, comments, statistics
- `member/` - User accounts, wallets, orders, favorites
- `shorts/` - Short video content management

### API Structure

- **Admin API** (`/server/api/admin/`): Authentication, CRUD operations, system management
- **Web API** (`/server/api/web/`): User auth, content discovery, streaming, payments
- **Response Format**: Standardized using `createApiResponse` helper

### Core Features

1. **Content Management**: Movies, TV series, actors, genres, banners
2. **User System**: Member registration, profiles, ratings, favorites, wallets
3. **Payment Integration**: WeChat Pay v3 with transaction management
4. **Analytics**: Visit statistics, user behavior tracking, content performance, Baidu Statistics integration
5. **Short Videos**: Upload and management system
6. **Video Streaming**: XGPlayer integration with HLS and MP4 support

## Environment Configuration

### Required Services

- **MySQL**: 8.0+ (create database `chunyu-cms-v2`)
- **Redis**: 6.0+ for session storage and caching

### Key Environment Variables (.env)

```dotenv
# Database Configuration
DATABASE_USERNAME=root
DATABASE_PASSWORD=123456
DATABASE_HOST=127.0.0.1
DATABASE_PORT=3306
DATABASE_DB=chunyu-cms-v2

# JWT Configuration
JWT_SECRET=chunyu-cms-v2

# Redis Configuration
REDIS_HOST=127.0.0.1
REDIS_PORT=6379
REDIS_USERNAME=
REDIS_PASSWORD=
REDIS_DB=0
REDIS_TTL=86400

# Application Configuration
IS_DEMO_ENVIRONMENT=false
SERVER_HOST=http://localhost:3000
IMG_HOST=http://localhost:3000
BAIDU_STATISTICS_ID=

# Email Configuration
FORM_USER_EMAIL=your@email.com
FORM_USER_EMAIL_PASSWORD=your_email_password
USER_EMAIL_SERVICE=QQ

# WeChat Pay Configuration
WECHAT_PAY_APP_ID=your_app_id
WECHAT_PAY_MCH_ID=your_mch_id
WECHAT_PAY_PUBLIC_KEY=/path/to/cert.pem
WECHAT_PAY_PRIVATE_KEY=/path/to/key.pem
```

## Database Setup

1. Create MySQL database `chunyu-cms-v2`
2. Import initial schema from `chunyu-cms-web/chunyu-cms-v2.sql`
3. Use Drizzle migrations for schema updates:
   ```bash
   cd chunyu-cms-web
   pnpm generate
   pnpm sql-push
   ```

## Development Guidelines

### Code Standards

- Use TypeScript exclusively
- Follow ESLint and Prettier configuration
- Use Vue 3 Composition API with `<script setup>`
- Component naming: PascalCase for components, kebab-case for files

### API Development

- Use Drizzle ORM for all database operations
- Follow RESTful conventions with consistent response formats
- Implement proper error handling and validation
- Use JWT authentication for protected routes

### Frontend Development

- Use Nuxt.js auto-imports for composables
- Follow Element Plus patterns for admin components
- Use UnoCSS utility classes for styling
- Implement proper TypeScript types

## Runtime Requirements

- **Node.js**: 20.19.0+ (managed by Volta)
- **pnpm**: 10.14.0+ (managed by Volta)
- **MySQL**: 8.0+
- **Redis**: 6.0+

## Deployment

### Single Service Mode

```bash
node bin/deploy.js
```
Access:
- Web: http://localhost:3000/
- Admin: http://localhost:3000/admin/
- Credentials: admin/admin123

### Dual Service Mode

```bash
# Build admin
cd chunyu-cms-admin && pnpm install && pnpm build:prod

# Build web
cd chunyu-cms-web && pnpm install && pnpm build

# Start with PM2 (requires pm2 installed globally: npm install -g pm2)
pm2 start pm2.config.cjs
```

### File Uploads

Upload directory: `chunyu-cms-web/uploads/` - ensure proper write permissions
Development: Files served from `uploads/` directory at `/uploads` base URL
Production: Configure nginx to serve uploads directly from filesystem

### Analytics and Tracking

- **Baidu Statistics**: Integrated via script injection in `nuxt.config.ts`
- **BAIDU_STATISTICS_ID**: Environment variable for Baidu Analytics site ID

## Security Notes

- Never commit `.env` files with real credentials
- Use environment variables for sensitive configuration
- JWT secret should be changed in production
- WeChat Pay certificates should be properly secured
- Implement proper input validation and sanitization

## Common Development Tasks

### Adding New Database Tables

1. Create schema file in `server/db/schema/[module]/`
2. Add to `server/db/schema/index.ts`
3. Run `pnpm generate` and `pnpm sql-push`

### Creating New API Endpoints

1. Add route in `server/api/admin/` or `server/api/web/`
2. Use Drizzle ORM for database operations
3. Follow existing response format patterns

### Frontend Component Development

1. Use Nuxt.js auto-imports for composables
2. Follow Element Plus component patterns for admin
3. Use UnoCSS utility classes for styling
4. Implement proper TypeScript types

## Default Admin Credentials

- **Username**: admin
- **Password**: admin123