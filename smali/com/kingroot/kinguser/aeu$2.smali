.class final Lcom/kingroot/kinguser/aeu$2;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aeu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/kingroot/kinguser/aeu$2;->uK()Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;

    move-result-object v0

    return-object v0
.end method

.method protected uK()Lcom/kingroot/kingmaster/network/updatalist/CommonList$a;
    .locals 1

    .prologue
    .line 359
    new-instance v0, Lcom/kingroot/kinguser/aeu$2$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/aeu$2$1;-><init>(Lcom/kingroot/kinguser/aeu$2;)V

    return-object v0
.end method
