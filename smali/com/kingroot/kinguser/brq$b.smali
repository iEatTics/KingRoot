.class Lcom/kingroot/kinguser/brq$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/brq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field bKG:Ljava/lang/String;

.field bKH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field bKI:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field bKJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/brq$a;",
            ">;"
        }
    .end annotation
.end field

.field bKK:Lcom/kingroot/kinguser/brn$a;

.field final synthetic bKu:Lcom/kingroot/kinguser/brq;

.field starttime:J


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/brq;)V
    .locals 2

    .prologue
    .line 832
    iput-object p1, p0, Lcom/kingroot/kinguser/brq$b;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/brq$b;->starttime:J

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/brq$b;->bKG:Ljava/lang/String;

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq$b;->bKH:Ljava/util/List;

    .line 834
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/kingroot/kinguser/brq$b;->bKJ:Ljava/util/List;

    .line 836
    return-void
.end method
