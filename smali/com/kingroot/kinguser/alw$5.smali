.class Lcom/kingroot/kinguser/alw$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alw;->Ht()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic adh:Ljava/util/ArrayList;

.field final synthetic adi:Ljava/util/ArrayList;

.field final synthetic ayY:Lcom/kingroot/kinguser/alw;

.field final synthetic ayZ:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic aza:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic azb:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alw;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/kingroot/kinguser/alw$5;->ayY:Lcom/kingroot/kinguser/alw;

    iput-object p2, p0, Lcom/kingroot/kinguser/alw$5;->adh:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kingroot/kinguser/alw$5;->adi:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/kingroot/kinguser/alw$5;->ayZ:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/kingroot/kinguser/alw$5;->aza:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p6, p0, Lcom/kingroot/kinguser/alw$5;->azb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Lcom/kingroot/kinguser/alw$5;->adh:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/kingroot/kinguser/alw$5;->adi:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alw$5;->ayZ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alw$5;->adh:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 168
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alw$5;->aza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/alw$5;->azb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kingroot/kinguser/alw$5;->adi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/adm;->a(IJLjava/util/ArrayList;)V

    .line 170
    :cond_1
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 175
    iget-object v0, p0, Lcom/kingroot/kinguser/alw$5;->ayZ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alw$5;->adh:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 176
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alw$5;->aza:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/alw$5;->azb:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kingroot/kinguser/alw$5;->adi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/adm;->a(IJLjava/util/ArrayList;)V

    .line 178
    :cond_0
    return-void
.end method
