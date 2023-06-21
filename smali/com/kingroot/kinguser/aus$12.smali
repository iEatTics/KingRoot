.class Lcom/kingroot/kinguser/aus$12;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/aus;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus;)V
    .locals 0

    .prologue
    .line 743
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$12;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 746
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 747
    new-instance v0, Lcom/kingroot/kinguser/aji;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aji;-><init>()V

    .line 748
    new-instance v1, Lcom/kingroot/kinguser/aus$12$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/aus$12$1;-><init>(Lcom/kingroot/kinguser/aus$12;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aji;->a(Lcom/kingroot/kinguser/aji$a;)V

    .line 777
    return-void
.end method
