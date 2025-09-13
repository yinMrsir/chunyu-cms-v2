# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

淳渔CMS-V2 is a modern video content management system built with Nuxt.js 3, focusing on rapid development of video websites and content management.

## Technology Stack

- **Frontend**: Nuxt.js 3, Vue 3, TypeScript, Element Plus, UnoCSS
- **Backend**: Nitro (Nuxt.js server engine), Drizzle ORM
- **Database**: MySQL 8.0+ with Redis caching
- **Authentication**: JWT-based authentication
- **Payment**: WeChat Pay v3 integration
- **Deployment**: PM2, Docker support
- **Package Manager**: pnpm (fixed at 8.9.2+)

## Development Commands

### Core Development
```bash
pnpm dev              # Start development server on localhost:3000
pnpm dev:pro          # Start with production environment config
pnpm build            # Build for production
pnpm preview          # Preview production build
```

### Code Quality
```bash
pnpm lint             # Run ESLint and Prettier checks
pnpm lintfix          # Auto-fix linting issues
```

### Database Operations
```bash
pnpm generate         # Generate Drizzle ORM migration files
pnpm sql-push         # Push schema changes to database
```

### Deployment
```bash
pnpm start            # Build and restart PM2 process
pnpm deploy-update    # Full deployment process (stops containers, builds, restarts)
```

## Project Architecture

### Key Directories
- `pages/` - Frontend page routes
- `server/` - Backend API routes and business logic
- `components/` - Reusable Vue components
- `layouts/` - Page layout templates
- `server/db/` - Database schema and Drizzle ORM models
- `composables/` - Vue 3 composables
- `utils/` - Utility functions
- `shared/` - Shared constants and types

### Database Structure
The system uses Drizzle ORM with a modular schema structure:

**System Modules** (`server/db/schema/system/`):
- User management with roles and permissions
- Department and post management
- System configuration
- File management

**Business Modules**:
- `basic/` - Countries, languages, genres, levels, banners
- `movie/` - Movies, actors, videos, ratings, comments, statistics
- `member/` - Member users, wallets, orders, favorites
- `shorts/` - Short video content

### Core Features
1. **Content Management** - Movies, TV series, short videos, categories
2. **User System** - Member registration, profiles, favorites
3. **Payment System** - WeChat Pay integration, wallet system
4. **Analytics** - Visit statistics, user behavior tracking

## Environment Configuration

### Development (.env)
- Local MySQL database (localhost:3306)
- Local Redis (localhost:6379)
- Development server URLs

### Production (.env.pro)
- Remote MySQL database
- Production domain configuration
- Demo environment flag

### Key Environment Variables
```
DATABASE_*          # MySQL database connection
REDIS_*            # Redis configuration
JWT_SECRET         # Authentication secret
SERVER_HOST        # Backend server URL
IMG_HOST           # Image domain
WECHAT_PAY_*       # WeChat Pay configuration
```

## Development Guidelines

### Code Style
- Use TypeScript exclusively
- Follow ESLint and Prettier configuration
- Use Vue 3 Composition API with `<script setup>`
- Component naming: PascalCase for components, kebab-case for files

### API Patterns
- RESTful API design with consistent response formats
- Server-side rendering (SSR) for SEO optimization
- JWT authentication for protected routes

### Database Operations
- Always use Drizzle ORM for database queries
- Create migration files for schema changes
- Use TypeScript types for database models

## Runtime Requirements

- **Node.js**: 18.16.0+ (managed by Volta)
- **pnpm**: 8.9.2+ (managed by Volta)
- **MySQL**: 8.0+
- **Redis**: 6.0+

## File Uploads

Upload directory: `uploads/` - ensure proper write permissions in production

## Security Notes

- Never commit `.env` files with real credentials
- Use environment variables for sensitive configuration
- JWT secret should be changed in production
- WeChat Pay certificates should be properly secured

## Common Development Tasks

### Adding New Database Tables
1. Create schema file in `server/db/schema/[module]/`
2. Add to `server/db/schema/index.ts`
3. Run `pnpm generate` and `pnpm sql-push`

### Creating New API Endpoints
1. Add route in `server/api/` directory
2. Use Drizzle ORM for database operations
3. Follow existing response format patterns

### Frontend Development
1. Use Nuxt.js auto-imports for composables
2. Follow Element Plus component patterns
3. Use UnoCSS utility classes for styling