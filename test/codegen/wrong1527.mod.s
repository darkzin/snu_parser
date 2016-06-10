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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 100 of <array 26 of <array 71 of <array 45 of <char>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    call    dummyINTfunc            #   1:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $86300, %eax            #   2:     if     86300 <= t2 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $74133, %eax            #   7:     assign v3 <- 74133
    movl    %eax, -32(%ebp)        
    movl    $15738, %eax            #   8:     sub    t3 <- 15738, 55413
    movl    $55413, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t4 <- t3, 72430
    movl    $72430, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     add    t5 <- t4, 65631
    movl    $65631, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     assign v3 <- t5
    movl    %eax, -32(%ebp)        

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
    call    dummyINTfunc            #   1:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t3 <- t2, 30143
    movl    $30143, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t3 < 8849 goto 2_while_body
    movl    $8849, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_2_while_body      
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #   8:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   9:     return t4
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 81 of <array 80 of <array 3 of <array 34 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]

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
l_f2_1_while_cond:
    movl    $98, %eax               #   1:     if     98 # 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
    jmp     l_f2_4                  #   5:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_12                 #  10:     goto   12
l_f2_12:
    jmp     l_f2_25                 #  12:     goto   25
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_26                 #  14:     goto   26
l_f2_25:
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_26:
    movl    $1, %eax                #  18:     if     1 # t2 goto 20
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_20                
    jmp     l_f2_21                 #  19:     goto   21
l_f2_20:
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_22                 #  22:     goto   22
l_f2_21:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_22:
    movzbl  -14(%ebp), %eax         #  26:     assign v3 <- t3
    movb    %al, 12(%ebp)          

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
l_test_1_while_cond:
    movl    $76288, %eax            #   1:     if     76288 < 27239 goto 2_while_body
    movl    $27239, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $83779, %eax            #   4:     assign v0 <- 83779
    movl    %eax, v0               
    call    dummyCHARfunc           #   5:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    movl    $35192, %eax            #   9:     if     35192 <= 72528 goto 8
    movl    $72528, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8               
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #  13:     goto   10
l_test_9:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_10:
    movzbl  -14(%ebp), %eax         #  17:     assign v1 <- t1
    movb    %al, v1                
    movl    $8193, %eax             #  18:     assign v0 <- 8193
    movl    %eax, v0               
l_test_14_while_cond:
    movl    $46580, %eax            #  20:     assign v0 <- 46580
    movl    %eax, v0               
    movl    $1, %eax                #  21:     assign v1 <- 1
    movb    %al, v1                
    movl    $63181, %eax            #  22:     param  0 <- 63181
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               
    jmp     l_test_14_while_cond    #  24:     goto   14_while_cond
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
