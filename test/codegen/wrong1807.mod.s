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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 72 of <array 58 of <array 81 of <array 32 of <array 81 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 32 of <array 65 of <array 62 of <array 14 of <array 19 of <bool>>>>>>> %ebp+16 ]

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
    movl    $62535, %eax            #   0:     mul    t3 <- 62535, 26949
    movl    $26949, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 47842
    movl    $47842, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $57984, %eax            #   2:     add    t5 <- 57984, 41487
    movl    $41487, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t4 >= t5 goto 1
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   4:     goto   2
l_f0_1:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $0, %eax                #   9:     assign t6 <- 0
    movb    %al, -25(%ebp)         
l_f0_3:
    movzbl  -25(%ebp), %eax         #  11:     return t6
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  12:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movl    $99, %eax               #  13:     if     99 # t7 goto 6_if_true
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_6_if_true         
    jmp     l_f0_7_if_false         #  14:     goto   7_if_false
l_f0_6_if_true:
    jmp     l_f0_11_if_false        #  16:     goto   11_if_false
    jmp     l_f0_9                  #  17:     goto   9
l_f0_11_if_false:
l_f0_9:
    jmp     l_f0_5                  #  20:     goto   5
l_f0_7_if_false:
l_f0_5:
    call    ReadInt                 #  23:     call   t8 <- ReadInt
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  24:     if     t8 <= 47564 goto 13
    movl    $47564, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_13                
    jmp     l_f0_14                 #  25:     goto   14
l_f0_13:
    movl    $1, %eax                #  27:     assign t9 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_15                 #  28:     goto   15
l_f0_14:
    movl    $0, %eax                #  30:     assign t9 <- 0
    movb    %al, -33(%ebp)         
l_f0_15:
    movzbl  -33(%ebp), %eax         #  32:     return t9
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 32 of <array 65 of <array 62 of <array 14 of <array 19 of <bool>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 72 of <array 58 of <array 81 of <array 32 of <array 81 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 27 of <array 17 of <array 84 of <array 73 of <array 12 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 97 of <array 19 of <array 95 of <array 100 of <array 31 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 13 of <array 4 of <array 35 of <array 88 of <array 21 of <char>>>>>>> %ebp+16 ]
    #   787929036(%ebp)  -787929064  [ $v3       <array 72 of <array 58 of <array 81 of <array 32 of <array 81 of <int>>>>>> %ebp+787929036 ]
    #   753625652(%ebp)  34303384  [ $v4       <array 32 of <array 65 of <array 62 of <array 14 of <array 19 of <bool>>>>>> %ebp+753625652 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-753625664, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-188406416, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,787929036(%ebp)      # local array 'v3': 5 dimensions
    movl    $72,787929040(%ebp)     #   dimension 1: 72 elements
    movl    $58,787929044(%ebp)     #   dimension 2: 58 elements
    movl    $81,787929048(%ebp)     #   dimension 3: 81 elements
    movl    $32,787929052(%ebp)     #   dimension 4: 32 elements
    movl    $81,787929056(%ebp)     #   dimension 5: 81 elements
    movl    $5,753625652(%ebp)      # local array 'v4': 5 dimensions
    movl    $32,753625656(%ebp)     #   dimension 1: 32 elements
    movl    $65,753625660(%ebp)     #   dimension 2: 65 elements
    movl    $62,753625664(%ebp)     #   dimension 3: 62 elements
    movl    $14,753625668(%ebp)     #   dimension 4: 14 elements
    movl    $19,753625672(%ebp)     #   dimension 5: 19 elements

    # function body
    leal    753625652(%ebp), %eax   #   0:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t3
    pushl   %eax                   
    movl    $76793, %eax            #   2:     add    t4 <- 76793, 31016
    movl    $31016, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  1 <- t4
    pushl   %eax                   
    leal    787929036(%ebp), %eax   #   4:     &()    t5 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   6:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $43869, %eax            #   7:     if     43869 > 69762 goto 2_if_true
    movl    $69762, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   8:     goto   3_if_false
l_f1_2_if_true:
    call    dummyProcedure          #  10:     call   dummyProcedure
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  12:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $-753625664, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 58 of <array 49 of <array 70 of <array 10 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 91 of <array 81 of <array 21 of <array 86 of <array 27 of <char>>>>>>> %ebp+12 ]
    #    -36(%ebp)   4  [ $v2       <int> %ebp-36 ]

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
l_f2_1_while_cond:
    movl    $97, %eax               #   1:     if     97 >= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   3:     goto   1_while_cond
    jmp     l_f2_exit              
    movl    $48023, %eax            #   5:     div    t3 <- 48023, 15468
    movl    $15468, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     mul    t4 <- t3, 18155
    movl    $18155, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     mul    t5 <- t4, 68164
    movl    $68164, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     mul    t6 <- t5, 71818
    movl    $71818, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   9:     div    t7 <- t6, 81593
    movl    $81593, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  10:     assign v2 <- t7
    movl    %eax, -36(%ebp)        

l_f2_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #   1:     call   WriteLn
    jmp     l_test_0                #   2:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $14834, %eax            #   5:     add    t1 <- 14834, 70977
    movl    $70977, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $99201, %eax            #   6:     if     99201 > t1 goto 7
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_7               
    jmp     l_test_8                #   7:     goto   8
l_test_7:
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_test_9                #  10:     goto   9
l_test_8:
    movl    $0, %eax                #  12:     assign t2 <- 0
    movb    %al, -21(%ebp)         
l_test_9:
    movzbl  -21(%ebp), %eax         #  14:     assign v0 <- t2
    movb    %al, v0                

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
