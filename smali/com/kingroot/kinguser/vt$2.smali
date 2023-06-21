.class Lcom/kingroot/kinguser/vt$2;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/vt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Lp:Lcom/kingroot/kinguser/vt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/vt;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/kingroot/kinguser/vt$2;->Lp:Lcom/kingroot/kinguser/vt;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    invoke-super {p0}, Lcom/kingroot/kinguser/wo;->run()V

    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/vt$2;->Lp:Lcom/kingroot/kinguser/vt;

    invoke-static {v0}, Lcom/kingroot/kinguser/vt;->a(Lcom/kingroot/kinguser/vt;)Z

    .line 116
    invoke-static {}, Lcom/kingroot/kinguser/wc;->nh()Lcom/kingroot/kinguser/wc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/wc;->ni()J

    move-result-wide v0

    .line 117
    const-wide/32 v2, 0x36ee800

    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/vt$2;->Lp:Lcom/kingroot/kinguser/vt;

    invoke-static {v0}, Lcom/kingroot/kinguser/vt;->b(Lcom/kingroot/kinguser/vt;)Z

    .line 122
    :cond_0
    return-void
.end method
