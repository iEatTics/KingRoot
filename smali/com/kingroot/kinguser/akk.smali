.class public Lcom/kingroot/kinguser/akk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/akk$a;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/akq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/kingroot/kinguser/akk$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/akk$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/akk;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method public static AO()Lcom/kingroot/kinguser/akq;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/kingroot/kinguser/akk;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/akq;

    return-object v0
.end method
