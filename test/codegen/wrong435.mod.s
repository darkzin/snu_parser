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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 4 of <array 6 of <array 5 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -17(%ebp)   1  [ $v3       <char> %ebp-17 ]

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
    movl    $97, %eax               #   0:     assign v3 <- 97
    movb    %al, -17(%ebp)         
    movl    $71899, %eax            #   1:     div    t0 <- 71899, 22379
    movl    $22379, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     return t0
    jmp     l_f0_exit              
    call    WriteLn                 #   3:     call   WriteLn

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 10 of <array 4 of <array 6 of <array 5 of <array 2 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 2 of <array 8 of <array 6 of <array 4 of <int>>>>>>> %ebp+8 ]
    #   -2468(%ebp)  2424  [ $v2       <array 10 of <array 4 of <array 6 of <array 5 of <array 2 of <bool>>>>>> %ebp-2468 ]
    #   -2469(%ebp)   1  [ $v3       <char> %ebp-2469 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2460, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $615, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2468(%ebp)          # local array 'v2': 5 dimensions
    movl    $10,-2464(%ebp)         #   dimension 1: 10 elements
    movl    $4,-2460(%ebp)          #   dimension 2: 4 elements
    movl    $6,-2456(%ebp)          #   dimension 3: 6 elements
    movl    $5,-2452(%ebp)          #   dimension 4: 5 elements
    movl    $2,-2448(%ebp)          #   dimension 5: 2 elements

    # function body
    movl    $34405, %eax            #   0:     if     34405 <= 86559 goto 1
    movl    $86559, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     param  1 <- t0
    pushl   %eax                   
    leal    -2468(%ebp), %eax       #   9:     &()    t1 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  11:     call   t2 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     return t2
    jmp     l_f1_exit              
    call    ReadInt                 #  13:     call   t3 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    $32992, %eax            #  14:     sub    t4 <- 32992, 12137
    movl    $12137, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     add    t5 <- t4, 68484
    movl    $68484, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  16:     add    t6 <- t5, 63418
    movl    $63418, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -28(%ebp), %eax         #  17:     if     t3 > t6 goto 6_if_true
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  18:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  20:     goto   5
l_f1_7_if_false:
l_f1_5:
    call    dummyCHARfunc           #  23:     call   t7 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  24:     assign v3 <- t7
    movb    %al, -2469(%ebp)       

l_f1_exit:
    # epilogue
    addl    $2460, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <ptr(4) to <array 10 of <array 4 of <array 6 of <array 5 of <array 2 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <char>>> %ebp-52 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 8 of <array 3 of <array 4 of <array 1 of <bool>>>>>>> %ebp+20 ]
    #   -2476(%ebp)  2424  [ $v5       <array 10 of <array 4 of <array 6 of <array 5 of <array 2 of <bool>>>>>> %ebp-2476 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2464, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $616, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2476(%ebp)          # local array 'v5': 5 dimensions
    movl    $10,-2472(%ebp)         #   dimension 1: 10 elements
    movl    $4,-2468(%ebp)          #   dimension 2: 4 elements
    movl    $6,-2464(%ebp)          #   dimension 3: 6 elements
    movl    $5,-2460(%ebp)          #   dimension 4: 5 elements
    movl    $2,-2456(%ebp)          #   dimension 5: 2 elements

    # function body
    movl    $8720, %eax             #   0:     mul    t0 <- 8720, 37695
    movl    $37695, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t1 <- t0, 65429
    movl    $65429, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 >= 90843 goto 1
    movl    $90843, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_f2_3:
    movzbl  -21(%ebp), %eax         #  10:     param  1 <- t2
    pushl   %eax                   
    leal    -2476(%ebp), %eax       #  11:     &()    t3 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  12:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  13:     call   t4 <- f0
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t5 <- t4, 68307
    movl    $68307, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  15:     mul    t6 <- t5, 60823
    movl    $60823, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     div    t7 <- t6, 79773
    movl    $79773, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  17:     return t7
    jmp     l_f2_exit              
    movl    $84762, %eax            #  18:     div    t8 <- 84762, 961
    movl    $961, %ebx             
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  19:     return t8
    jmp     l_f2_exit              
    leal    _str_1, %eax            #  20:     &()    t9 <- _str_1
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     param  0 <- t9
    pushl   %eax                   
    call    WriteStr                #  22:     call   WriteStr
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $2464, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $0, %eax                #   0:     assign v0 <- 0
    movb    %al, v0                
    movl    $44238, %eax            #   1:     if     44238 > 6366 goto 2_if_true
    movl    $6366, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $1, %eax                #   8:     assign v0 <- 1
    movb    %al, v0                
    movl    $98, %eax               #   9:     assign v1 <- 98
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
