.class final Lcom/kingroot/kinguser/afg$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/afg;->aG(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ahp:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/kingroot/kinguser/afg$1;->ahp:Ljava/util/List;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/afg$1;->ahp:Ljava/util/List;

    invoke-static {v0}, Lcom/kingroot/kinguser/afg;->aa(Ljava/util/List;)V

    .line 70
    return-void
.end method
