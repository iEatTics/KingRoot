.class public Lcom/kingroot/kinguser/aae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/aae$a;,
        Lcom/kingroot/kinguser/aae$b;
    }
.end annotation


# static fields
.field private static Xp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/aaf;",
            ">;"
        }
    .end annotation
.end field

.field private static Xq:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/aag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xp:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aae;->Xp:Landroid/util/SparseArray;

    .line 27
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xp:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/aae$a;->Xs:Lcom/kingroot/kinguser/aae$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aae$a;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/aad;->pJ()Lcom/kingroot/kinguser/aad;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xp:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/aae$a;->Xr:Lcom/kingroot/kinguser/aae$a;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aae$a;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/aak;->pM()Lcom/kingroot/kinguser/aak;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xq:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aae;->Xq:Landroid/util/SparseArray;

    .line 33
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xq:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/aae$b;->Xw:Lcom/kingroot/kinguser/aae$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aae$b;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/aai;->pK()Lcom/kingroot/kinguser/aai;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xq:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/aae$b;->Xv:Lcom/kingroot/kinguser/aae$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aae$b;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/aal;->pN()Lcom/kingroot/kinguser/aal;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xq:Landroid/util/SparseArray;

    sget-object v1, Lcom/kingroot/kinguser/aae$b;->Xu:Lcom/kingroot/kinguser/aae$b;

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aae$b;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/kingroot/kinguser/aak;->pM()Lcom/kingroot/kinguser/aak;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    :cond_1
    return-void
.end method

.method public static a(Lcom/kingroot/kinguser/aae$a;)Lcom/kingroot/kinguser/aaf;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xp:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aae$a;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aaf;

    return-object v0
.end method

.method public static a(Lcom/kingroot/kinguser/aae$b;)Lcom/kingroot/kinguser/aag;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/kingroot/kinguser/aae;->Xq:Landroid/util/SparseArray;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/aae$b;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aag;

    return-object v0
.end method
