.class Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/security/ProtectRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;",
        "Lcom/kingroot/kinguser/rr;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final MAX_CACHE_SIZE:I

.field final synthetic this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/security/ProtectRecorder;I)V
    .locals 4

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;

    .line 66
    int-to-double v0, p2

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 67
    iput p2, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->MAX_CACHE_SIZE:I

    .line 68
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->size()I

    move-result v0

    iget v1, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$LRUCache;->MAX_CACHE_SIZE:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
