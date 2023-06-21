.class final Lcom/kingroot/kinguser/ben$c;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ben;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/kingroot/kinguser/bee;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/kingroot/kinguser/ben$c;",
        ">;"
    }
.end annotation


# instance fields
.field private final bls:Lcom/kingroot/kinguser/bee;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bee;)V
    .locals 1
    .param p1    # Lcom/kingroot/kinguser/bee;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 279
    iput-object p1, p0, Lcom/kingroot/kinguser/ben$c;->bls:Lcom/kingroot/kinguser/bee;

    .line 280
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/ben$c;)Lcom/kingroot/kinguser/bee;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/kingroot/kinguser/ben$c;->bls:Lcom/kingroot/kinguser/bee;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/ben$c;)I
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/ben$c;->bls:Lcom/kingroot/kinguser/bee;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bed;->Zb()Lcom/kingroot/kinguser/bem;

    move-result-object v0

    .line 285
    iget-object v1, p1, Lcom/kingroot/kinguser/ben$c;->bls:Lcom/kingroot/kinguser/bee;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bee;->Zg()Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bed;->Zb()Lcom/kingroot/kinguser/bem;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/kingroot/kinguser/bem;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bem;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 273
    check-cast p1, Lcom/kingroot/kinguser/ben$c;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/ben$c;->a(Lcom/kingroot/kinguser/ben$c;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PriorityFutureTask#kJobHolder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/ben$c;->bls:Lcom/kingroot/kinguser/bee;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bee;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
