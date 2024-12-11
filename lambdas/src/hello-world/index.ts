import { Context, APIGatewayEvent, APIGatewayProxyResultV2 } from "aws-lambda";

export const handler = async (event: APIGatewayEvent, context: Context): Promise<APIGatewayProxyResultV2> => {
  console.log(`Event: ${JSON.stringify(event, null, 2)}`);
  console.log(`Context: ${JSON.stringify(context, null, 2)}`);
  return {
    statusCode: 200,
    body: JSON.stringify({ message: "hello from lambda using terraform" }),
    headers: {
      "Content-Type": "application/json",
    },
  };
};
