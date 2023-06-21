.class final Lcom/kingroot/kinguser/arv$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/arv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/arv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected ND()Lcom/kingroot/kinguser/arv;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/kingroot/kinguser/arv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/arv;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arv$1;->ND()Lcom/kingroot/kinguser/arv;

    move-result-object v0

    return-object v0
.end method
