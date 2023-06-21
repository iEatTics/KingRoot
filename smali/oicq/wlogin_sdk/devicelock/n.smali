.class public Loicq/wlogin_sdk/devicelock/n;
.super Loicq/wlogin_sdk/devicelock/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/devicelock/e;-><init>()V

    const/4 v0, 0x7

    iput v0, p0, Loicq/wlogin_sdk/devicelock/n;->_type:I

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p0}, Loicq/wlogin_sdk/devicelock/n;->fill_head()V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/devicelock/n;->fill_body([BI)V

    iget v0, p0, Loicq/wlogin_sdk/devicelock/n;->_head_len:I

    invoke-virtual {p0, p1, v0}, Loicq/wlogin_sdk/devicelock/n;->put_block([BI)I

    invoke-virtual {p0}, Loicq/wlogin_sdk/devicelock/n;->get_buf()[B

    move-result-object v0

    goto :goto_0
.end method
