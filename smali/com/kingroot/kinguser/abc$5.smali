.class Lcom/kingroot/kinguser/abc$5;
.super Lcom/kingroot/kinguser/wo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/abc;->closeShell()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic YS:Lcom/kingroot/kinguser/abc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/abc;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/kingroot/kinguser/abc$5;->YS:Lcom/kingroot/kinguser/abc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/wo;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hW()Lcom/kingroot/kinguser/cbw;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/cbw;->closeShell()V

    .line 162
    return-void
.end method
