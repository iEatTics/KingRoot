.class public Loicq/wlogin_sdk/b/ba;
.super Loicq/wlogin_sdk/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/16 v0, 0x166

    iput v0, p0, Loicq/wlogin_sdk/b/ba;->h:I

    return-void
.end method


# virtual methods
.method public a(I)[B
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Loicq/wlogin_sdk/tools/util;->int8_to_buf([BII)V

    iget v1, p0, Loicq/wlogin_sdk/b/ba;->h:I

    invoke-virtual {p0, v1}, Loicq/wlogin_sdk/b/ba;->b(I)V

    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Loicq/wlogin_sdk/b/ba;->c([BI)V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ba;->e()V

    invoke-virtual {p0}, Loicq/wlogin_sdk/b/ba;->b()[B

    move-result-object v0

    return-object v0
.end method
