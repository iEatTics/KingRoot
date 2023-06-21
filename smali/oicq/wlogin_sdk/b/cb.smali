.class public Loicq/wlogin_sdk/b/cb;
.super Loicq/wlogin_sdk/b/b;


# instance fields
.field a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Loicq/wlogin_sdk/b/b;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/cb;->a:[B

    const/16 v0, 0x192

    iput v0, p0, Loicq/wlogin_sdk/b/cb;->h:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Loicq/wlogin_sdk/b/cb;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 5

    iget v0, p0, Loicq/wlogin_sdk/b/cb;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Loicq/wlogin_sdk/b/cb;->a:[B

    iget-object v0, p0, Loicq/wlogin_sdk/b/cb;->g:[B

    iget v1, p0, Loicq/wlogin_sdk/b/cb;->e:I

    iget-object v2, p0, Loicq/wlogin_sdk/b/cb;->a:[B

    const/4 v3, 0x0

    iget v4, p0, Loicq/wlogin_sdk/b/cb;->f:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
