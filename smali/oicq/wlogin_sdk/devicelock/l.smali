.class public Loicq/wlogin_sdk/devicelock/l;
.super Loicq/wlogin_sdk/devicelock/e;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/devicelock/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Loicq/wlogin_sdk/devicelock/l;->a:I

    const/4 v0, 0x5

    iput v0, p0, Loicq/wlogin_sdk/devicelock/l;->_type:I

    return-void
.end method


# virtual methods
.method public a(J)[B
    .locals 3

    const/4 v1, 0x4

    invoke-virtual {p0}, Loicq/wlogin_sdk/devicelock/l;->fill_head()V

    new-array v0, v1, [B

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/devicelock/l;->fill_body([BI)V

    iget v0, p0, Loicq/wlogin_sdk/devicelock/l;->_head_len:I

    invoke-virtual {p0, p1, p2, v0}, Loicq/wlogin_sdk/devicelock/l;->put_int32(JI)I

    invoke-virtual {p0}, Loicq/wlogin_sdk/devicelock/l;->get_buf()[B

    move-result-object v0

    return-object v0
.end method
