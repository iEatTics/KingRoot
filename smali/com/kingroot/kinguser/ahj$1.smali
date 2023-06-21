.class Lcom/kingroot/kinguser/ahj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ahj;->getAllLogs()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic apV:Lcom/kingroot/kinguser/ahj;

.field final synthetic val$ret:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahj;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/kingroot/kinguser/ahj$1;->apV:Lcom/kingroot/kinguser/ahj;

    iput-object p2, p0, Lcom/kingroot/kinguser/ahj$1;->val$ret:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/kingroot/kinguser/ahj$1;->val$ret:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/ai/AntiInjectLogModel;->b(Ljava/util/List;Landroid/database/Cursor;)V

    .line 91
    return-void
.end method
