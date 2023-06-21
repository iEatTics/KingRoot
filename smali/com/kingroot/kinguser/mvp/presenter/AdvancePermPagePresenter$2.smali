.class public Lcom/kingroot/kinguser/mvp/presenter/AdvancePermPagePresenter$2;
.super Lcom/kingroot/kinguser/advance/manager/IPermChangedListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aun;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/aun;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/kingroot/kinguser/mvp/presenter/AdvancePermPagePresenter$2;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-direct {p0}, Lcom/kingroot/kinguser/advance/manager/IPermChangedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 374
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/mvp/presenter/AdvancePermPagePresenter$2;->this$0:Lcom/kingroot/kinguser/aun;

    invoke-static {v1}, Lcom/kingroot/kinguser/aun;->c(Lcom/kingroot/kinguser/aun;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 375
    return-void
.end method
