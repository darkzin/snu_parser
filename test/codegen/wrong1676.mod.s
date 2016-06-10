##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    jmp     l_f0_5                  #   1:     goto   5
    movl    $1, %eax                #   2:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $0, %eax                #   5:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   7:     if     t4 = 0 goto 2_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  10:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #  12:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 24 of <array 19 of <array 20 of <array 5 of <array 50 of <bool>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     param  0 <- 99
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    call    dummyINTfunc            #   3:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 24 of <array 19 of <array 20 of <array 5 of <array 50 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t7       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t8       <bool> %ebp-23 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 73 of <array 76 of <array 88 of <array 72 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #   -2280048(%ebp)  2280024  [ $v3       <array 24 of <array 19 of <array 20 of <array 5 of <array 50 of <bool>>>>>> %ebp-2280048 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2280036, %esp          # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $570009, %ecx          
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2280048(%ebp)       # local array 'v3': 5 dimensions
    movl    $24,-2280044(%ebp)      #   dimension 1: 24 elements
    movl    $19,-2280040(%ebp)      #   dimension 2: 19 elements
    movl    $20,-2280036(%ebp)      #   dimension 3: 20 elements
    movl    $5,-2280032(%ebp)       #   dimension 4: 5 elements
    movl    $50,-2280028(%ebp)      #   dimension 5: 50 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 > 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    leal    -2280048(%ebp), %eax    #   7:     &()    t5 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #   9:     call   t6 <- f1
    addl    $4, %esp               
    movb    %al, -21(%ebp)         
    jmp     l_f2_11                 #  10:     goto   11
    movl    $60051, %eax            #  11:     if     60051 < 98899 goto 10
    movl    $98899, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_10                
    jmp     l_f2_11                 #  12:     goto   11
l_f2_10:
    movl    $1, %eax                #  14:     assign t7 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f2_12                 #  15:     goto   12
l_f2_11:
    movl    $0, %eax                #  17:     assign t7 <- 0
    movb    %al, -22(%ebp)         
l_f2_12:
    movzbl  -22(%ebp), %eax         #  19:     if     t7 = 0 goto 6
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_7                  #  20:     goto   7
l_f2_6:
    movl    $1, %eax                #  22:     assign t8 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_f2_8                  #  23:     goto   8
l_f2_7:
    movl    $0, %eax                #  25:     assign t8 <- 0
    movb    %al, -23(%ebp)         
l_f2_8:
    movzbl  -23(%ebp), %eax         #  27:     return t8
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $2280036, %esp          # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
l_test_2_if_true:
    jmp     l_test_exit            
l_test_7_while_cond:
    jmp     l_test_6                #   5:     goto   6
    jmp     l_test_7_while_cond     #   6:     goto   7_while_cond
l_test_6:
    movl    $0, %eax                #   8:     if     0 = 0 goto 10
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10              
    jmp     l_test_11               #   9:     goto   11
l_test_10:
    movl    $1, %eax                #  11:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_12               #  12:     goto   12
l_test_11:
    movl    $0, %eax                #  14:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_12:
    movzbl  -14(%ebp), %eax         #  16:     assign v0 <- t1
    movb    %al, v0                
l_test_15_while_cond:
    movl    $98, %eax               #  18:     if     98 < 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_16_while_body   
    jmp     l_test_14               #  19:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  21:     goto   15_while_cond
l_test_14:
    jmp     l_test_1                #  23:     goto   1
l_test_1:
    call    dummyBOOLfunc           #  25:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  26:     if     t2 # 0 goto 19_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_19_if_true      
    jmp     l_test_20_if_false      #  27:     goto   20_if_false
l_test_19_if_true:
l_test_23_while_cond:
    movl    $48956, %eax            #  30:     if     48956 >= 66884 goto 24_while_body
    movl    $66884, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_24_while_body   
    jmp     l_test_22               #  31:     goto   22
l_test_24_while_body:
    jmp     l_test_23_while_cond    #  33:     goto   23_while_cond
l_test_22:
    movl    $4581, %eax             #  35:     if     4581 <= 41875 goto 27_if_true
    movl    $41875, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_27_if_true      
    jmp     l_test_28_if_false      #  36:     goto   28_if_false
l_test_27_if_true:
    jmp     l_test_26               #  38:     goto   26
l_test_28_if_false:
l_test_26:
    movl    $85911, %eax            #  41:     assign v1 <- 85911
    movl    %eax, v1               
    jmp     l_test_18               #  42:     goto   18
l_test_20_if_false:
l_test_18:
    jmp     l_test_33_if_false      #  45:     goto   33_if_false
    movl    $24065, %eax            #  46:     assign v1 <- 24065
    movl    %eax, v1               
    jmp     l_test_31               #  47:     goto   31
l_test_33_if_false:
l_test_31:
l_test_36_while_cond:
    jmp     l_test_39               #  51:     goto   39
    jmp     l_test_39               #  52:     goto   39
    jmp     l_test_39               #  53:     goto   39
l_test_39:
    movl    $1, %eax                #  55:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_41               #  56:     goto   41
    movl    $0, %eax                #  57:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_41:
    movl    $1, %eax                #  59:     if     1 # t3 goto 37_while_body
    movzbl  -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_37_while_body   
    jmp     l_test_35               #  60:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  62:     goto   36_while_cond
l_test_35:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
