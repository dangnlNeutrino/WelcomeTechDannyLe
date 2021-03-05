
class MessageList extends React.Component {
  render(){
    return <div className="row" id="chat-box">
      { this.messagesList() }
    </div>
  }

  messagesList(){
    const { messages } = this.props

    return messages.map((message, index) =>
      
      <div className="col-sm-12" key={ index }>
        <p className="msg_cotainer">
          
          <span> { message.get_email }  at { message.written_at } : </span>
          <br/>
          { message.body }
        </p>
      </div>
    );
  }
}
