.class Lcom/kingroot/kinguser/bqs$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bqs$a;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic bIS:Lcom/kingroot/kinguser/bqs$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bqs$a;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/kingroot/kinguser/bqs$a$1;->bIS:Lcom/kingroot/kinguser/bqs$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/bqs$a$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bqs$a$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v0, p0, Lcom/kingroot/kinguser/bqs$a$1;->bIS:Lcom/kingroot/kinguser/bqs$a;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bqs$a;->a()V

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bqs$a$1;->bIS:Lcom/kingroot/kinguser/bqs$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bqs$a;->a()V

    throw v0
.end method
