.class final Lcloudsdk/ext/kr/RootHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcloudsdk/ext/kr/RootHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic I:Lcloudsdk/ext/kr/RootHandler;

.field private synthetic J:I


# direct methods
.method constructor <init>(Lcloudsdk/ext/kr/RootHandler;I)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcloudsdk/ext/kr/RootHandler$4;->I:Lcloudsdk/ext/kr/RootHandler;

    iput p2, p0, Lcloudsdk/ext/kr/RootHandler$4;->J:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 122
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$4;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0, v1}, Lcloudsdk/ext/kr/RootHandler;->a(Lcloudsdk/ext/kr/RootHandler;I)I

    .line 123
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$4;->I:Lcloudsdk/ext/kr/RootHandler;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootHandler;->a(Lcloudsdk/ext/kr/RootHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcloudsdk/ext/kr/RootDao;->setCurrStatus(I)V

    .line 124
    iget-object v0, p0, Lcloudsdk/ext/kr/RootHandler$4;->I:Lcloudsdk/ext/kr/RootHandler;

    sget-object v1, Lcloudsdk/ext/kr/ProgressHandler$a;->u:Lcloudsdk/ext/kr/ProgressHandler$a;

    iget v2, p0, Lcloudsdk/ext/kr/RootHandler$4;->J:I

    invoke-static {v0, v1, v2}, Lcloudsdk/ext/kr/RootHandler;->a(Lcloudsdk/ext/kr/RootHandler;Lcloudsdk/ext/kr/ProgressHandler$a;I)V

    .line 125
    return-void
.end method
