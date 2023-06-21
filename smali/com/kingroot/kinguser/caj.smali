.class public Lcom/kingroot/kinguser/caj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/caj$a;,
        Lcom/kingroot/kinguser/caj$b;
    }
.end annotation


# static fields
.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static byJ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/cam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a(Lcom/kingroot/kinguser/caj$a;)Lcom/kingroot/kinguser/cam;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/caj;->a()V

    .line 47
    sget-object v0, Lcom/kingroot/kinguser/caj;->byJ:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/caj$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cam;

    return-object v0
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/caj;->byJ:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/caj;->byJ:Landroid/util/SparseArray;

    .line 27
    sget-object v0, Lcom/kingroot/kinguser/caj;->byJ:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/caj$a;->bWn:Lcom/kingroot/kinguser/caj$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/caj$a;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/cal;->ako()Lcom/kingroot/kinguser/cal;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/kingroot/kinguser/caj;->byJ:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/caj$a;->bWm:Lcom/kingroot/kinguser/caj$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/caj$a;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/cao;->akq()Lcom/kingroot/kinguser/cao;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/caj;->b:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/caj;->b:Landroid/util/SparseArray;

    .line 33
    sget-object v0, Lcom/kingroot/kinguser/caj;->b:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/caj$b;->bWr:Lcom/kingroot/kinguser/caj$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/caj$b;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/can;->akp()Lcom/kingroot/kinguser/can;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/kingroot/kinguser/caj;->b:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/caj$b;->bWq:Lcom/kingroot/kinguser/caj$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/caj$b;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/cap;->akr()Lcom/kingroot/kinguser/cap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/kingroot/kinguser/caj;->b:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/caj$b;->bWp:Lcom/kingroot/kinguser/caj$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/caj$b;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/cao;->akq()Lcom/kingroot/kinguser/cao;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    :cond_1
    return-void
.end method
