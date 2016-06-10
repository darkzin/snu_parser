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
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    jmp     l_f0_0                  #   1:     goto   0
l_f0_4_while_cond:
    movl    $100, %eax              #   3:     if     100 <= 99 goto 5_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_5_while_body      
    jmp     l_f0_3                  #   4:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   6:     goto   4_while_cond
l_f0_3:
    movl    $100, %eax              #   8:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
l_f0_0:
l_f0_9_while_cond:
    call    dummyBOOLfunc           #  12:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  13:     if     t4 = 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10_while_body     
    jmp     l_f0_10_while_body      #  14:     goto   10_while_body
    jmp     l_f0_10_while_body      #  15:     goto   10_while_body
    jmp     l_f0_10_while_body      #  16:     goto   10_while_body
    jmp     l_f0_8                  #  17:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  19:     goto   9_while_cond
l_f0_8:
    call    dummyCHARfunc           #  21:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  22:     assign v0 <- t5
    movb    %al, 8(%ebp)           

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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 1 of <array 1 of <array 4 of <array 9 of <char>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <char> %ebp-15 ]

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
    movl    $86037, %eax            #   0:     if     86037 > 73875 goto 5
    movl    $73875, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_5:
    jmp     l_f1_2                  #   3:     goto   2
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     return t4
    jmp     l_f1_exit              
    movl    $98, %eax               #  10:     if     98 < 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  11:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_13                 #  13:     goto   13
    jmp     l_f1_13                 #  14:     goto   13
    movl    $1, %eax                #  15:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_14                 #  16:     goto   14
l_f1_13:
    movl    $0, %eax                #  18:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_14:
    movzbl  -14(%ebp), %eax         #  20:     return t5
    jmp     l_f1_exit              
    jmp     l_f1_7                  #  21:     goto   7
l_f1_9_if_false:
l_f1_7:
    movl    $100, %eax              #  24:     assign v1 <- 100
    movb    %al, -15(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 1 of <array 1 of <array 1 of <array 4 of <array 9 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <char> %ebp-18 ]
    #    -80(%ebp)  60  [ $v0       <array 1 of <array 1 of <array 1 of <array 4 of <array 9 of <char>>>>>> %ebp-80 ]
    #    -81(%ebp)   1  [ $v1       <char> %ebp-81 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-80(%ebp)            # local array 'v0': 5 dimensions
    movl    $1,-76(%ebp)            #   dimension 1: 1 elements
    movl    $1,-72(%ebp)            #   dimension 2: 1 elements
    movl    $1,-68(%ebp)            #   dimension 3: 1 elements
    movl    $4,-64(%ebp)            #   dimension 4: 4 elements
    movl    $9,-60(%ebp)            #   dimension 5: 9 elements

    # function body
l_f2_1_while_cond:
    leal    -80(%ebp), %eax         #   1:     &()    t4 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #   3:     call   t5 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   4:     if     t5 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
l_f2_4_while_cond:
    movl    $21172, %eax            #   8:     if     21172 # 6778 goto 5_while_body
    movl    $6778, %ebx            
    cmpl    %ebx, %eax             
    jne     l_f2_5_while_body      
    jmp     l_f2_3                  #   9:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #  11:     goto   4_while_cond
l_f2_3:
    jmp     l_f2_1_while_cond       #  13:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    movl    $97, %eax               #  16:     if     97 < 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  17:     goto   10_if_false
l_f2_9_if_true:
    movl    $100, %eax              #  19:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #  20:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_15_if_false        #  21:     goto   15_if_false
    jmp     l_f2_13                 #  22:     goto   13
l_f2_15_if_false:
l_f2_13:
    call    dummyCHARfunc           #  25:     call   t6 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  26:     assign v1 <- t6
    movb    %al, -81(%ebp)         
    jmp     l_f2_8                  #  27:     goto   8
l_f2_10_if_false:
l_f2_8:

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 1 of <array 1 of <array 1 of <array 4 of <array 9 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    jmp     l_test_exit            
    leal    v0, %eax                #   2:     &()    t0 <- v0
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  0 <- t0
    pushl   %eax                   
    call    f1                      #   4:     call   t1 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
l_test_6_while_cond:
    movl    $48008, %eax            #   6:     if     48008 > 48010 goto 7_while_body
    movl    $48010, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   7:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   9:     goto   6_while_cond
l_test_5:
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
l_test_10_while_cond:
    movl    $100, %eax              #  15:     if     100 > 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_11_while_body   
    jmp     l_test_9                #  16:     goto   9
l_test_11_while_body:
    call    dummyINTfunc            #  18:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_test_10_while_cond    #  19:     goto   10_while_cond
l_test_9:
    jmp     l_test_16               #  21:     goto   16
    movl    $1, %eax                #  22:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_17               #  23:     goto   17
l_test_16:
    movl    $0, %eax                #  25:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_17:
    movzbl  -25(%ebp), %eax         #  27:     assign v1 <- t3
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <array 1 of <array 1 of <array 1 of <array 4 of <array 9 of <char>>>>>>
    .long    5
    .long    1
    .long    1
    .long    1
    .long    4
    .long    9
    .skip   36
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
