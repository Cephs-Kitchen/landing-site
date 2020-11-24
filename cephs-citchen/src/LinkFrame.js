const LinkFrame = (props) => {
    return(
        <iframe src={props.source} title={props.title}></iframe>
    );
};

export default LinkFrame;
