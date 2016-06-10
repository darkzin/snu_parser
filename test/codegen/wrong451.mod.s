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
    #    -13(%ebp)   1  [ $t5       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t6       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 4 of <array 2 of <array 5 of <array 9 of <array 8 of <int>>>>>>> %ebp+16 ]

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
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, 12(%ebp)          
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_2                  #   2:     goto   2
l_f0_5:
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t5 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t5 <- 0
    movb    %al, -13(%ebp)         
l_f0_4:
    movzbl  -13(%ebp), %eax         #  11:     return t5
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  12:     call   t6 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 4 of <array 2 of <array 5 of <array 9 of <array 8 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 8 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 7 of <array 5 of <array 6 of <array 9 of <bool>>>>>>> %ebp+16 ]
    #    -37(%ebp)   1  [ $v4       <char> %ebp-37 ]
    #   -11584(%ebp)  11544  [ $v5       <array 4 of <array 2 of <array 5 of <array 9 of <array 8 of <int>>>>>> %ebp-11584 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $11572, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2893, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-11584(%ebp)         # local array 'v5': 5 dimensions
    movl    $4,-11580(%ebp)         #   dimension 1: 4 elements
    movl    $2,-11576(%ebp)         #   dimension 2: 2 elements
    movl    $5,-11572(%ebp)         #   dimension 3: 5 elements
    movl    $9,-11568(%ebp)         #   dimension 4: 9 elements
    movl    $8,-11564(%ebp)         #   dimension 5: 8 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t5 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   1:     assign v4 <- t5
    movb    %al, -37(%ebp)         
    movl    $100, %eax              #   2:     if     100 < 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
    leal    -11584(%ebp), %eax      #   7:     &()    t6 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  2 <- t6
    pushl   %eax                   
    movl    $97, %eax               #   9:     param  1 <- 97
    pushl   %eax                   
    movl    $1, %eax                #  10:     param  0 <- 1
    pushl   %eax                   
    call    f0                      #  11:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    movl    $1, %eax                #  12:     return 1
    jmp     l_f1_exit              
    jmp     l_f1_1                  #  13:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $66728, %eax            #  16:     div    t8 <- 66728, 35406
    movl    $35406, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  17:     add    t9 <- t8, 77514
    movl    $77514, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  18:     add    t10 <- t9, 73987
    movl    $73987, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     assign v2 <- t10
    movl    %eax, 12(%ebp)         

l_f1_exit:
    # epilogue
    addl    $11572, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
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
    movl    $48598, %eax            #   0:     add    t5 <- 48598, 39892
    movl    $39892, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t6 <- t5, 2007
    movl    $2007, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t6
    movl    %eax, -36(%ebp)        
    movl    $35131, %eax            #   3:     add    t7 <- 35131, 68953
    movl    $68953, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t8 <- t7, 75224
    movl    $75224, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t9 <- t8, 21456
    movl    $21456, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     if     t9 < 43135 goto 2_if_true
    movl    $43135, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   7:     goto   3_if_false
l_f2_2_if_true:
l_f2_6_while_cond:
    jmp     l_f2_5                  #  10:     goto   5
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
l_f2_5:
    jmp     l_f2_exit              
    jmp     l_f2_exit              
    jmp     l_f2_1                  #  15:     goto   1
l_f2_3_if_false:
l_f2_1:
    call    WriteLn                 #  18:     call   WriteLn

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]

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
    movl    $25976, %eax            #   0:     assign v0 <- 25976
    movl    %eax, v0               
    movl    $6570, %eax             #   1:     if     6570 > 83622 goto 2_if_true
    movl    $83622, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $1, %eax                #   8:     if     1 = 0 goto 10_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #   9:     goto   11_if_false
l_test_10_if_true:
    call    dummyProcedure          #  11:     call   dummyProcedure
    jmp     l_test_9                #  12:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_6                #  15:     goto   6
l_test_6:
    call    ReadInt                 #  17:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     add    t1 <- t0, 66603
    movl    $66603, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     add    t2 <- t1, 16570
    movl    $16570, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     sub    t3 <- t2, 24197
    movl    $24197, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     assign v0 <- t3
    movl    %eax, v0               
    movl    $67696, %eax            #  22:     add    t4 <- 67696, 49739
    movl    $49739, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     assign v0 <- t4
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
