.class public Lcom/kingroot/kinguser/bvf;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private bPw:Lcom/kingroot/kinguser/bvh;

.field private bPx:Lcom/kingroot/kinguser/bvj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    const-string v0, "softwaresdk.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17
    new-instance v0, Lcom/kingroot/kinguser/bvh;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvh;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvf;->bPw:Lcom/kingroot/kinguser/bvh;

    .line 18
    new-instance v0, Lcom/kingroot/kinguser/bvj;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bvj;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvf;->bPx:Lcom/kingroot/kinguser/bvj;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/kingroot/kinguser/bvf;->bPw:Lcom/kingroot/kinguser/bvh;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bvh;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bvf;->bPx:Lcom/kingroot/kinguser/bvj;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bvj;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 29
    if-le p3, p2, :cond_0

    .line 30
    iget-object v0, p0, Lcom/kingroot/kinguser/bvf;->bPw:Lcom/kingroot/kinguser/bvh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bvh;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bvf;->bPx:Lcom/kingroot/kinguser/bvj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bvj;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 36
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvf;->bPw:Lcom/kingroot/kinguser/bvh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bvh;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/bvf;->bPx:Lcom/kingroot/kinguser/bvj;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bvj;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method
