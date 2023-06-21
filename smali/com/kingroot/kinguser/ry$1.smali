.class Lcom/kingroot/kinguser/ry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rw$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ry;->s(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Gu:Ljava/util/List;

.field final synthetic Gv:Lcom/kingroot/kinguser/ry;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ry;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/kingroot/kinguser/ry$1;->Gv:Lcom/kingroot/kinguser/ry;

    iput-object p2, p0, Lcom/kingroot/kinguser/ry$1;->Gu:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 72
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/ry$1;->Gv:Lcom/kingroot/kinguser/ry;

    invoke-static {v0}, Lcom/kingroot/kinguser/ry;->a(Lcom/kingroot/kinguser/ry;)Lcom/kingroot/kinguser/rx$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/ry$1;->Gv:Lcom/kingroot/kinguser/ry;

    invoke-static {v0}, Lcom/kingroot/kinguser/ry;->a(Lcom/kingroot/kinguser/ry;)Lcom/kingroot/kinguser/rx$a;

    move-result-object v0

    iget-object v0, v0, Lcom/kingroot/kinguser/rx$a;->Gp:Ljava/lang/String;

    move-object v1, v0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ry$1;->Gu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 78
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 84
    :cond_1
    return-void

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method
