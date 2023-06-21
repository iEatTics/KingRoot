.class public Lcom/kingroot/kinguser/bel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final blg:I

.field private blh:Lcom/kingroot/kinguser/bec;


# direct methods
.method public constructor <init>(ILcom/kingroot/kinguser/bec;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/kingroot/kinguser/bel;->blg:I

    .line 22
    iput-object p2, p0, Lcom/kingroot/kinguser/bel;->blh:Lcom/kingroot/kinguser/bec;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bel;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/kingroot/kinguser/bel;->blg:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 4
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 28
    new-instance v0, Lcom/kingroot/kinguser/bel$1;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/bel$1;-><init>(Lcom/kingroot/kinguser/bel;Ljava/lang/Runnable;)V

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/beh;->Zo()Lcom/kingroot/kinguser/bea;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bel;->blh:Lcom/kingroot/kinguser/bec;

    invoke-static {v2}, Lcom/kingroot/kinguser/beh;->c(Lcom/kingroot/kinguser/bec;)Lcom/kingroot/kinguser/bea$a;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/kingroot/kinguser/bea;->b(Lcom/kingroot/kinguser/bea$a;)V

    .line 41
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KJobManager-Thread-type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/bel;->blh:Lcom/kingroot/kinguser/bec;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v1
.end method
