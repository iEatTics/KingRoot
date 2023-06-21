.class public Lcom/kingroot/kinguser/bwa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bQU:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/cn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bwa;->bQU:Landroid/util/SparseArray;

    .line 11
    return-void
.end method

.method public static aiI()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/kingroot/kinguser/cn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/kingroot/kinguser/bwa;->bQU:Landroid/util/SparseArray;

    return-object v0
.end method
