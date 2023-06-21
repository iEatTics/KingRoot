.class Lcom/kingroot/kinguser/atj$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/atj;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOb:Lcom/kingroot/kinguser/asr;

.field final synthetic this$0:Lcom/kingroot/kinguser/atj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atj;Lcom/kingroot/kinguser/asr;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/kingroot/kinguser/atj$5;->this$0:Lcom/kingroot/kinguser/atj;

    iput-object p2, p0, Lcom/kingroot/kinguser/atj$5;->aOb:Lcom/kingroot/kinguser/asr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 403
    iget-object v0, p0, Lcom/kingroot/kinguser/atj$5;->aOb:Lcom/kingroot/kinguser/asr;

    iget-object v0, v0, Lcom/kingroot/kinguser/asr;->aNr:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/asw;->iR(Ljava/lang/String;)V

    .line 404
    return-void
.end method
