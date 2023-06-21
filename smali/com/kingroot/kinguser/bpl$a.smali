.class public final Lcom/kingroot/kinguser/bpl$a;
.super Ljava/util/concurrent/FutureTask;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private byK:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bpl;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/kingroot/kinguser/bpl$a;->byK:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/kingroot/kinguser/bpl$a;

    if-eq p0, p1, :cond_1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bpl$a;->byK:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/kingroot/kinguser/bpl$a;->byK:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpl$a;->byK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/kingroot/kinguser/bpl$a;->byK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpl$a;->byK:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Comparable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kingroot/kinguser/bpl$a;->byK:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/kingroot/kinguser/bpl$a;->byK:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
