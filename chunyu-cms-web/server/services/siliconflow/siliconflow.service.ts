export class SiliconflowService {
  async completions(messages: { role: string; content: string }[]) {
    const body = {
      model: 'deepseek-ai/DeepSeek-V2.5',
      messages
    };
    const options = {
      method: 'POST',
      headers: {
        Authorization: 'Bearer sk-tcdgevluzflgvsmpmaepjkcyomkctiyhcrspmstruhfbcqsn',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(body)
    };

    try {
      const response = await fetch('https://api.siliconflow.cn/v1/chat/completions', options);
      return await response.json();
    } catch (error) {
      return Promise.reject(error);
    }
  }
}
