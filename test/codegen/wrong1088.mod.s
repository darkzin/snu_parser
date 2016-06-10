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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 87 of <array 22 of <array 50 of <array 64 of <array 45 of <bool>>>>>>> %ebp+12 ]
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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
    call    dummyCHARfunc           #   2:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t4
    jmp     l_f0_exit              
    movl    $15117, %eax            #   4:     assign v2 <- 15117
    movl    %eax, 16(%ebp)         

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $98818, %eax            #   0:     mul    t3 <- 98818, 97655
    movl    $97655, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t4 <- t3, 77595
    movl    $77595, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     div    t5 <- t4, 9980
    movl    $9980, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t5
    movl    %eax, -36(%ebp)        
    movl    $100, %eax              #   4:     if     100 = 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   5:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_5                  #   7:     goto   5
l_f1_5:
    movl    $100, %eax              #   9:     if     100 >= 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_if_false:
l_f1_8:
    movl    $97, %eax               #  15:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               
    movl    $92319, %eax            #  17:     assign v1 <- 92319
    movl    %eax, -36(%ebp)        
    jmp     l_f1_1                  #  18:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    ReadInt                 #  21:     call   t6 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     sub    t7 <- t6, 14090
    movl    $14090, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     return t7
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 87 of <array 22 of <array 50 of <array 64 of <array 45 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 73 of <array 15 of <array 8 of <array 41 of <int>>>>>>> %ebp+20 ]
    #   -275616056(%ebp)  275616024  [ $v4       <array 87 of <array 22 of <array 50 of <array 64 of <array 45 of <bool>>>>>> %ebp-275616056 ]
    #   -275616057(%ebp)   1  [ $v5       <char> %ebp-275616057 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $275616048, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $68904012, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-275616056(%ebp)     # local array 'v4': 5 dimensions
    movl    $87,-275616052(%ebp)    #   dimension 1: 87 elements
    movl    $22,-275616048(%ebp)    #   dimension 2: 22 elements
    movl    $50,-275616044(%ebp)    #   dimension 3: 50 elements
    movl    $64,-275616040(%ebp)    #   dimension 4: 64 elements
    movl    $45,-275616036(%ebp)    #   dimension 5: 45 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    movl    $81071, %eax            #   2:     param  2 <- 81071
    pushl   %eax                   
    leal    -275616056(%ebp), %eax  #   3:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  1 <- t3
    pushl   %eax                   
    movl    $36613, %eax            #   5:     sub    t4 <- 36613, 71569
    movl    $71569, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     add    t5 <- t4, 96424
    movl    $96424, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     add    t6 <- t5, 7944
    movl    $7944, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   9:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    movl    $97, %eax               #  13:     assign v5 <- 97
    movb    %al, -275616057(%ebp)  

l_f2_exit:
    # epilogue
    addl    $275616048, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 87 of <array 22 of <array 50 of <array 64 of <array 45 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]

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
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $76418, %eax            #   2:     sub    t0 <- 76418, 50720
    movl    $50720, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     param  2 <- t0
    pushl   %eax                   
    leal    v0, %eax                #   4:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t1
    pushl   %eax                   
    movl    $50674, %eax            #   6:     param  0 <- 50674
    pushl   %eax                   
    call    f0                      #   7:     call   t2 <- f0
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   8:     if     t2 # 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_3_while_body    
    jmp     l_test_1                #   9:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
    movl    $77006, %eax            #  13:     assign v1 <- 77006
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <array 87 of <array 22 of <array 50 of <array 64 of <array 45 of <bool>>>>>>
    .long    5
    .long   87
    .long   22
    .long   50
    .long   64
    .long   45
    .skip 275616000
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
