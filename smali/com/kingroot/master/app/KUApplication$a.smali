.class Lcom/kingroot/master/app/KUApplication$a;
.super Lcom/kingroot/common/app/KApplication$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/master/app/KUApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic bzz:Lcom/kingroot/master/app/KUApplication;


# direct methods
.method public constructor <init>(Lcom/kingroot/master/app/KUApplication;)V
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 115
    iput-object p1, p0, Lcom/kingroot/master/app/KUApplication$a;->bzz:Lcom/kingroot/master/app/KUApplication;

    .line 119
    const/16 v1, 0x11

    const-string v2, "EP_KingUser"

    const/16 v3, 0x280

    const-string v4, "30F06D5DF23EAE66"

    sget-object v5, Lcom/kingroot/kinguser/aiq;->xV:[Ljava/lang/String;

    const-string v6, "http://pmir.3g.qq.com"

    const-string v7, ""

    move-object v0, p0

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-direct/range {v0 .. v11}, Lcom/kingroot/common/app/KApplication$b;-><init>(ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V

    .line 122
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ix()I
    .locals 1

    .prologue
    .line 131
    invoke-static {}, Lcom/kingroot/kinguser/aiu;->yv()I

    move-result v0

    return v0
.end method
