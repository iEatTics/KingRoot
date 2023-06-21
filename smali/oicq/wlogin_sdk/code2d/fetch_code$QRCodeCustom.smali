.class public Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loicq/wlogin_sdk/code2d/fetch_code;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QRCodeCustom"
.end annotation


# instance fields
.field public Dpi:I

.field public EcLevel:I

.field public Hint:I

.field public Margin:I

.field public Micro:I

.field public Size:I

.field public Version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Micro:I

    iput v0, p0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Version:I

    const/4 v0, 0x3

    iput v0, p0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Size:I

    const/4 v0, 0x4

    iput v0, p0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Margin:I

    const/16 v0, 0x48

    iput v0, p0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Dpi:I

    iput v1, p0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->EcLevel:I

    iput v1, p0, Loicq/wlogin_sdk/code2d/fetch_code$QRCodeCustom;->Hint:I

    return-void
.end method
