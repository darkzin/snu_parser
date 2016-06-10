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
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 1 of <array 2 of <array 6 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $32156, %eax            #   0:     mul    t3 <- 32156, 9256
    movl    $9256, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v3 <- t3
    movl    %eax, 16(%ebp)         
    call    ReadInt                 #   2:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t5 <- t4, 95782
    movl    $95782, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t6 <- t5, 30023
    movl    $30023, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     sub    t7 <- t6, 25210
    movl    $25210, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     return t7
    jmp     l_f0_exit              
    call    ReadInt                 #   7:     call   t8 <- ReadInt
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     add    t9 <- t8, 82719
    movl    $82719, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     if     t9 < 15279 goto 3_if_true
    movl    $15279, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #  10:     goto   4_if_false
l_f0_3_if_true:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 1 of <array 2 of <array 6 of <array 10 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 5 of <array 1 of <array 2 of <array 6 of <array 10 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t7       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t8       <bool> %ebp-30 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 3 of <array 7 of <array 2 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]
    #   -2456(%ebp)  2424  [ $v4       <array 5 of <array 1 of <array 2 of <array 6 of <array 10 of <int>>>>>> %ebp-2456 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2444, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $611, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2456(%ebp)          # local array 'v4': 5 dimensions
    movl    $5,-2452(%ebp)          #   dimension 1: 5 elements
    movl    $1,-2448(%ebp)          #   dimension 2: 1 elements
    movl    $2,-2444(%ebp)          #   dimension 3: 2 elements
    movl    $6,-2440(%ebp)          #   dimension 4: 6 elements
    movl    $10,-2436(%ebp)         #   dimension 5: 10 elements

    # function body
    movl    $85922, %eax            #   0:     param  2 <- 85922
    pushl   %eax                   
    movl    $85416, %eax            #   1:     param  2 <- 85416
    pushl   %eax                   
    movl    $63354, %eax            #   2:     param  1 <- 63354
    pushl   %eax                   
    leal    -2456(%ebp), %eax       #   3:     &()    t3 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #   5:     call   t4 <- f0
    addl    $12, %esp              
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     param  1 <- t4
    pushl   %eax                   
    leal    -2456(%ebp), %eax       #   7:     &()    t5 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   9:     call   t6 <- f0
    addl    $12, %esp              
    movl    %eax, -28(%ebp)        
    call    dummyCHARfunc           #  10:     call   t7 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  11:     return t7
    jmp     l_f1_exit              
    movl    $75612, %eax            #  12:     if     75612 # 51497 goto 3_if_true
    movl    $51497, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  13:     goto   4_if_false
l_f1_3_if_true:
    call    dummyBOOLfunc           #  15:     call   t8 <- dummyBOOLfunc
    movb    %al, -30(%ebp)         
    movl    $97, %eax               #  16:     if     97 > 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #  17:     goto   9_if_false
l_f1_8_if_true:
    movl    $100, %eax              #  19:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_7                  #  20:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_2                  #  23:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $2444, %esp             # remove locals
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
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 2 of <array 1 of <array 7 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 10 of <array 2 of <array 2 of <array 6 of <array 10 of <char>>>>>>> %ebp+20 ]

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
    movl    $98, %eax               #   0:     assign v3 <- 98
    movb    %al, 16(%ebp)          
    movl    $21686, %eax            #   1:     sub    t3 <- 21686, 657
    movl    $657, %ebx             
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 51385
    movl    $51385, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     sub    t5 <- t4, 56939
    movl    $56939, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t6 <- t5, 16031
    movl    $16031, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     return t6
    jmp     l_f2_exit              
    movl    $76367, %eax            #   6:     div    t7 <- 76367, 82213
    movl    $82213, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $75414, %eax            #   7:     sub    t8 <- 75414, t7
    movl    -32(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     return t8
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 1 of <array 3 of <array 7 of <array 2 of <array 10 of <char>>>>>>> %ebp-20 ]
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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $100, %eax              #   1:     assign v0 <- 100
    movb    %al, v0                
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   4:     goto   6_while_cond
    jmp     l_test_exit            
    jmp     l_test_0                #   6:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    WriteLn                 #  11:     call   WriteLn
    movl    $34788, %eax            #  12:     param  2 <- 34788
    pushl   %eax                   
    leal    v1, %eax                #  13:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  1 <- t1
    pushl   %eax                   
    movl    $98, %eax               #  15:     param  0 <- 98
    pushl   %eax                   
    call    f1                      #  16:     call   t2 <- f1
    addl    $12, %esp              
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  17:     assign v0 <- t2
    movb    %al, v0                
    jmp     l_test_15_if_false      #  18:     goto   15_if_false
l_test_17_while_cond:
    jmp     l_test_17_while_cond    #  20:     goto   17_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_13               #  24:     goto   13
l_test_15_if_false:
l_test_13:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <array 1 of <array 3 of <array 7 of <array 2 of <array 10 of <char>>>>>>
    .long    5
    .long    1
    .long    3
    .long    7
    .long    2
    .long   10
    .skip  420








    # end of global data section
    #-----------------------------------------

    .end
##################################################
