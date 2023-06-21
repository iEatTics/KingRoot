.class Lcom/kingroot/kinguser/vu$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vu$3;->a(Lcom/kingroot/kinguser/wo$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LD:Lcom/kingroot/kinguser/vu$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vu$3;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/kingroot/kinguser/vu$3$1;->LD:Lcom/kingroot/kinguser/vu$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 386
    new-instance v0, Lcom/kingroot/kinguser/vu$3$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vu$3$1$1;-><init>(Lcom/kingroot/kinguser/vu$3$1;)V

    .line 406
    invoke-virtual {v0}, Lcom/kingroot/kinguser/vu$3$1$1;->start()V

    .line 407
    return-void
.end method
