.class public Lcom/kingroot/kinguser/alm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/asy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/kingroot/kinguser/alm$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/alm$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/alm;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public static GQ()Lcom/kingroot/kinguser/asy;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/kingroot/kinguser/alm;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/asy;

    return-object v0
.end method
