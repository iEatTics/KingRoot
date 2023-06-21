.class Lcom/kingroot/kinguser/tb$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/tb;->a(Ljava/lang/String;Lcom/kingroot/kinguser/sx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic GS:Lcom/kingroot/kinguser/tb;

.field final synthetic GT:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/tb;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/kingroot/kinguser/tb$5;->GS:Lcom/kingroot/kinguser/tb;

    iput-object p2, p0, Lcom/kingroot/kinguser/tb$5;->GT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/tb$5;->GT:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 350
    :cond_0
    return-void
.end method
