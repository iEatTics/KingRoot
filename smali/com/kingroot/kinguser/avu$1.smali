.class final Lcom/kingroot/kinguser/avu$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/avu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/avu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected Si()Lcom/kingroot/kinguser/avu;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lcom/kingroot/kinguser/avu;

    const v1, 0x8b02b9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/avu;-><init>(ILcom/kingroot/kinguser/avu$1;)V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avu$1;->Si()Lcom/kingroot/kinguser/avu;

    move-result-object v0

    return-object v0
.end method
