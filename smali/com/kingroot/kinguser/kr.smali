.class public Lcom/kingroot/kinguser/kr;
.super Lcom/kingroot/kinguser/nj;
.source "SourceFile"


# instance fields
.field final synthetic um:Lcom/king/uranus/bI;


# direct methods
.method public constructor <init>(Lcom/king/uranus/bI;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/kingroot/kinguser/kr;->um:Lcom/king/uranus/bI;

    invoke-direct {p0}, Lcom/kingroot/kinguser/nj;-><init>()V

    return-void
.end method


# virtual methods
.method public ca()V
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/kingroot/kinguser/hn;

    invoke-static {v0}, Lcom/kingroot/kinguser/ih;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/hn;

    .line 76
    invoke-interface {v0}, Lcom/kingroot/kinguser/hn;->bd()V

    .line 77
    iget-object v0, p0, Lcom/kingroot/kinguser/kr;->um:Lcom/king/uranus/bI;

    invoke-static {v0}, Lcom/king/uranus/bI;->a(Lcom/king/uranus/bI;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/lo;

    .line 79
    :try_start_0
    invoke-interface {v0}, Lcom/kingroot/kinguser/lo;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method
