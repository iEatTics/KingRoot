.class public Lcom/kingroot/kinguser/page/LogPage$1;
.super Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/axl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axl;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/axl;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/kingroot/kinguser/page/LogPage$1;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-direct {p0}, Lcom/kingroot/kinguser/root/log/ILogsChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogsChangeListener()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/page/LogPage$1;->this$0:Lcom/kingroot/kinguser/axl;

    invoke-static {v1}, Lcom/kingroot/kinguser/axl;->a(Lcom/kingroot/kinguser/axl;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 66
    return-void
.end method
