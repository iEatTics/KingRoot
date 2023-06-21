.class Lcom/kingcore/uilib/RootStatusView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingcore/uilib/RootStatusView;->setIcon(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cf:Lcom/kingcore/uilib/RootStatusView;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/RootStatusView;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/kingcore/uilib/RootStatusView$1;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/kingcore/uilib/RootStatusView$1;->Cf:Lcom/kingcore/uilib/RootStatusView;

    invoke-virtual {v0}, Lcom/kingcore/uilib/RootStatusView;->invalidate()V

    .line 202
    return-void
.end method
