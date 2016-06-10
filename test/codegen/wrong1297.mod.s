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
    #    -21(%ebp)   1  [ $t4       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 63 of <array 43 of <array 30 of <array 70 of <array 69 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_1_while_cond       #   2:     goto   1_while_cond
l_f0_0:
l_f0_7_while_cond:
    call    ReadInt                 #   5:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     if     t2 <= 96098 goto 8_while_body
    movl    $96098, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_8_while_body      
    jmp     l_f0_6                  #   7:     goto   6
l_f0_8_while_body:
    jmp     l_f0_12_if_false        #   9:     goto   12_if_false
    jmp     l_f0_10                 #  10:     goto   10
l_f0_12_if_false:
l_f0_10:
    call    dummyINTfunc            #  13:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  14:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_7_while_cond       #  15:     goto   7_while_cond
l_f0_6:
    call    dummyCHARfunc           #  17:     call   t4 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  18:     return t4
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

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
l_f1_1_while_cond:
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
    jmp     l_f1_1_while_cond       #   6:     goto   1_while_cond
l_f1_0:
    movl    $7838, %eax             #   8:     mul    t2 <- 7838, 61697
    movl    $61697, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     mul    t3 <- t2, 18284
    movl    $18284, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v0 <- t3
    movl    %eax, -28(%ebp)        
    movl    $75174, %eax            #  11:     if     75174 < 51295 goto 9
    movl    $51295, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_9                 
    jmp     l_f1_10                 #  12:     goto   10
l_f1_9:
    movl    $1, %eax                #  14:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_11                 #  15:     goto   11
l_f1_10:
    movl    $0, %eax                #  17:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_11:
    movzbl  -21(%ebp), %eax         #  19:     assign v1 <- t4
    movb    %al, -29(%ebp)         

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 55 of <array 51 of <array 7 of <array 55 of <array 86 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
    jmp     l_f2_exit              
l_f2_5_while_cond:
    movl    $98, %eax               #   2:     if     98 > 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_6_while_body      
    jmp     l_f2_4                  #   3:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_4:
    movl    $6572, %eax             #   7:     sub    t2 <- 6572, 7401
    movl    $7401, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $74822, %eax            #   8:     if     74822 > t2 goto 9_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   9:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  11:     goto   8
l_f2_10_if_false:
l_f2_8:
    jmp     l_f2_1                  #  14:     goto   1
l_f2_1:
    jmp     l_f2_exit              

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 # 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    call    ReadInt                 #   8:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     sub    t1 <- t0, 29662
    movl    $29662, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v0 <- t1
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
