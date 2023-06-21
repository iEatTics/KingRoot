.class final Lcom/kingroot/kinguser/awo$1;
.super Lcom/kingroot/kinguser/cce;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/cce",
        "<",
        "Lcom/kingroot/kinguser/awo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/kingroot/kinguser/cce;-><init>()V

    return-void
.end method


# virtual methods
.method protected Te()Lcom/kingroot/kinguser/awo;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/kingroot/kinguser/awo;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awo;-><init>()V

    return-object v0
.end method

.method protected synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awo$1;->Te()Lcom/kingroot/kinguser/awo;

    move-result-object v0

    return-object v0
.end method
