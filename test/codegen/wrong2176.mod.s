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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 95 of <array 2 of <array 67 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
    jmp     l_f0_2_while_body       #   3:     goto   2_while_body
    jmp     l_f0_2_while_body       #   4:     goto   2_while_body
    jmp     l_f0_2_while_body       #   5:     goto   2_while_body
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   7:     goto   1_while_cond
    movl    $51557, %eax            #   8:     add    t4 <- 51557, 38525
    movl    $38525, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     add    t5 <- t4, 28822
    movl    $28822, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     assign v1 <- t5
    movl    %eax, -28(%ebp)        
l_f0_12_while_cond:
    movl    $1, %eax                #  12:     if     1 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_13_while_body     
    jmp     l_f0_11                 #  13:     goto   11
l_f0_13_while_body:
    movl    $56577, %eax            #  15:     if     56577 >= 72667 goto 16_if_true
    movl    $72667, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  16:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_15                 #  18:     goto   15
l_f0_17_if_false:
l_f0_15:
    call    dummyCHARfunc           #  21:     call   t6 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  22:     return t6
    jmp     l_f0_exit              
    jmp     l_f0_12_while_cond      #  23:     goto   12_while_cond
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -48(%ebp)   4  [ $v1       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $6205, %eax             #   0:     sub    t4 <- 6205, 34239
    movl    $34239, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     sub    t5 <- t4, 41977
    movl    $41977, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   2:     assign v1 <- t5
    movl    %eax, -48(%ebp)        
    movl    $1, %eax                #   3:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    movl    $30937, %eax            #   4:     mul    t6 <- 30937, 6689
    movl    $6689, %ebx            
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t7 <- t6, 89969
    movl    $89969, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     sub    t8 <- t7, 20770
    movl    $20770, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   7:     sub    t9 <- t8, 32224
    movl    $32224, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     sub    t10 <- t9, 21214
    movl    $21214, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   9:     if     t10 < 72445 goto 3
    movl    $72445, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_3                 
    jmp     l_f1_4                  #  10:     goto   4
l_f1_3:
    movl    $1, %eax                #  12:     assign t11 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_5                  #  13:     goto   5
l_f1_4:
    movl    $0, %eax                #  15:     assign t11 <- 0
    movb    %al, -17(%ebp)         
l_f1_5:
    movzbl  -17(%ebp), %eax         #  17:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <ptr(4) to <array 4 of <array 95 of <array 2 of <array 67 of <array 5 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #   -254644(%ebp)  254624  [ $v1       <array 4 of <array 95 of <array 2 of <array 67 of <array 5 of <bool>>>>>> %ebp-254644 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $254632, %esp           # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $63658, %ecx           
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-254644(%ebp)        # local array 'v1': 5 dimensions
    movl    $4,-254640(%ebp)        #   dimension 1: 4 elements
    movl    $95,-254636(%ebp)       #   dimension 2: 95 elements
    movl    $2,-254632(%ebp)        #   dimension 3: 2 elements
    movl    $67,-254628(%ebp)       #   dimension 4: 67 elements
    movl    $5,-254624(%ebp)        #   dimension 5: 5 elements

    # function body
    leal    -254644(%ebp), %eax     #   0:     &()    t4 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   2:     call   t5 <- f0
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     return t5
    jmp     l_f2_exit              
    movl    $74311, %eax            #   4:     if     74311 > 12156 goto 2_if_true
    movl    $12156, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   5:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    jmp     l_f2_9                  #   8:     goto   9
l_f2_9:
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_11                 #  11:     goto   11
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -18(%ebp)         
l_f2_11:
    movzbl  -18(%ebp), %eax         #  14:     if     t6 # 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #  15:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  17:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_1                  #  19:     goto   1
l_f2_3_if_false:
l_f2_1:
    movl    $98, %eax               #  22:     return 98
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $254632, %esp           # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    movl    $100, %eax              #   0:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   1:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 > 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   4:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   6:     goto   1
l_test_3_if_false:
l_test_1:
    call    dummyBOOLfunc           #   9:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
l_test_7_while_cond:
    jmp     l_test_10               #  11:     goto   10
    jmp     l_test_11               #  12:     goto   11
l_test_10:
    movl    $1, %eax                #  14:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_12               #  15:     goto   12
l_test_11:
    movl    $0, %eax                #  17:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_12:
    movzbl  -15(%ebp), %eax         #  19:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_7_while_cond     #  20:     goto   7_while_cond
    movl    $89824, %eax            #  21:     add    t3 <- 89824, 21784
    movl    $21784, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  22:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  23:     call   WriteInt
    addl    $4, %esp               

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
