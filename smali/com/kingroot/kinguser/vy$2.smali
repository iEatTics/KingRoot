.class Lcom/kingroot/kinguser/vy$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/rw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/vy;->b(JI)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ml:Lcom/kingroot/kinguser/vy;

.field final synthetic Mm:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vy;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/kingroot/kinguser/vy$2;->Ml:Lcom/kingroot/kinguser/vy;

    iput-object p2, p0, Lcom/kingroot/kinguser/vy$2;->Mm:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 187
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :try_start_0
    const-string v0, "data"

    .line 197
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 201
    :cond_2
    :try_start_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v2, p0, Lcom/kingroot/kinguser/vy$2;->Mm:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    :goto_1
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0

    .line 203
    :catch_1
    move-exception v1

    goto :goto_1
.end method
