.class Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;
.super Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;
.source "AutoPressButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applisto/appcloner/classes/AutoPressButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewFinder"
.end annotation


# instance fields
.field mScreenText:Ljava/lang/String;

.field final synthetic this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;->this$0:Lcom/applisto/appcloner/classes/AutoPressButtons;

    .line 240
    invoke-direct {p0, p1, p2}, Lcom/applisto/appcloner/classes/AutoPressButtons$ViewFinder;-><init>(Lcom/applisto/appcloner/classes/AutoPressButtons;Landroid/view/View;)V

    .line 242
    iput-object p3, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;->mScreenText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method matchesView(Landroid/view/View;)Z
    .locals 1

    .line 249
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    check-cast p1, Landroid/widget/TextView;

    .line 251
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 253
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/applisto/appcloner/classes/AutoPressButtons$TextViewFinder;->mScreenText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
