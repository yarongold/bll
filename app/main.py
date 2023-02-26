def lambda_handler(event, context):
    body = '''
    <!doctype html>
    <html>
      <head>
       <title>Simple web page to be called from lambda function!</title>
       </head>
       <body>
        <p>This is an example paragraph. Anything in the <strong>body</strong> tag will appear on the page, just like this <strong>p</strong> tag and its contents.</p>
      </body>
    </html>
    '''
    return {
        'statusCode': 200,
        'body': body,
        'headers': {
            'Content-Type': 'text/html',
        }
    }
