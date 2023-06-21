.class Lcom/kingroot/kinguser/vu$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vu$5;->a(Lcom/kingroot/kinguser/wo$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic LF:Lcom/kingroot/kinguser/vu$5;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vu$5;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/kingroot/kinguser/vu$5$1;->LF:Lcom/kingroot/kinguser/vu$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 538
    new-instance v0, Lcom/kingroot/kinguser/vu$5$1$1;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/vu$5$1$1;-><init>(Lcom/kingroot/kinguser/vu$5$1;)V

    .line 546
    invoke-virtual {v0}, Lcom/kingroot/kinguser/vu$5$1$1;->start()V

    .line 547
    return-void
.end method
