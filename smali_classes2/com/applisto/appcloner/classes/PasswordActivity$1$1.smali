.class Lcom/applisto/appcloner/classes/PasswordActivity$1$1;
.super Lcom/applisto/appcloner/classes/util/WindowCallbackDelegate;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applisto/appcloner/classes/PasswordActivity$1;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field gestureDetector:Landroid/view/GestureDetector;

.field final synthetic this$1:Lcom/applisto/appcloner/classes/PasswordActivity$1;

.field final synthetic val$longPressRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/applisto/appcloner/classes/PasswordActivity$1;Landroid/view/Window$Callback;Ljava/lang/Runnable;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/PasswordActivity$1;

    iput-object p3, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1$1;->val$longPressRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p2}, Lcom/applisto/appcloner/classes/util/WindowCallbackDelegate;-><init>(Landroid/view/Window$Callback;)V

    .line 261
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1$1;->this$1:Lcom/applisto/appcloner/classes/PasswordActivity$1;

    iget-object p2, p2, Lcom/applisto/appcloner/classes/PasswordActivity$1;->val$context:Landroid/content/Context;

    new-instance p3, Lcom/applisto/appcloner/classes/PasswordActivity$1$1$1;

    invoke-direct {p3, p0}, Lcom/applisto/appcloner/classes/PasswordActivity$1$1$1;-><init>(Lcom/applisto/appcloner/classes/PasswordActivity$1$1;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1$1;->gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/applisto/appcloner/classes/PasswordActivity$1$1;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 275
    invoke-super {p0, p1}, Lcom/applisto/appcloner/classes/util/WindowCallbackDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
