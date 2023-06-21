.class Lcom/kingroot/kinguser/awt$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/awt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awt;)V
    .locals 0

    .prologue
    .line 601
    iput-object p1, p0, Lcom/kingroot/kinguser/awt$5;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 604
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 609
    return-void
.end method
