.class public Lcom/kingroot/kinguser/bsf;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field private bLq:Lcom/kingroot/kinguser/bse;

.field private bLr:Lcom/kingroot/kinguser/bsa;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 17
    const-string v0, "Discovery_DB"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    new-instance v0, Lcom/kingroot/kinguser/bse;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bse;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bsf;->bLq:Lcom/kingroot/kinguser/bse;

    .line 19
    new-instance v0, Lcom/kingroot/kinguser/bsa;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bsa;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bsf;->bLr:Lcom/kingroot/kinguser/bsa;

    .line 20
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kingroot/kinguser/bsf;->bLq:Lcom/kingroot/kinguser/bse;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bse;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    iget-object v0, p0, Lcom/kingroot/kinguser/bsf;->bLr:Lcom/kingroot/kinguser/bsa;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bsa;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 26
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 30
    if-le p3, p2, :cond_0

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/bsf;->bLq:Lcom/kingroot/kinguser/bse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bse;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 32
    iget-object v0, p0, Lcom/kingroot/kinguser/bsf;->bLr:Lcom/kingroot/kinguser/bsa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bsa;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 37
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bsf;->bLq:Lcom/kingroot/kinguser/bse;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bse;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 35
    iget-object v0, p0, Lcom/kingroot/kinguser/bsf;->bLr:Lcom/kingroot/kinguser/bsa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/bsa;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method
