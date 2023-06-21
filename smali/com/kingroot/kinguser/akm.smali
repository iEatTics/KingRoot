.class public Lcom/kingroot/kinguser/akm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final avA:Landroid/content/SharedPreferences;

.field protected final avB:Lcom/kingroot/kinguser/ako;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/kingroot/master/app/KUApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kingroot/kinguser/rv;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/akm;->avA:Landroid/content/SharedPreferences;

    .line 22
    new-instance v0, Lcom/kingroot/kinguser/ako;

    iget-object v1, p0, Lcom/kingroot/kinguser/akm;->avA:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/ako;-><init>(Landroid/content/SharedPreferences$Editor;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/akm;->avB:Lcom/kingroot/kinguser/ako;

    .line 23
    return-void
.end method
