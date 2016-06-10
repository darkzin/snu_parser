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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 17 of <array 53 of <array 60 of <array 49 of <array 83 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 6 of <array 47 of <array 24 of <array 45 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 36 of <array 72 of <array 38 of <array 90 of <array 76 of <char>>>>>>> %ebp+20 ]
    #    -17(%ebp)   1  [ $v4       <bool> %ebp-17 ]

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
    movl    $0, %eax                #   0:     assign v4 <- 0
    movb    %al, -17(%ebp)         
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $58092, %eax            #   2:     param  0 <- 58092
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 36 of <array 72 of <array 38 of <array 90 of <array 76 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 39 of <array 6 of <array 47 of <array 24 of <array 45 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 17 of <array 53 of <array 60 of <array 49 of <array 83 of <int>>>>>>> %ebp-44 ]
    #    -45(%ebp)   1  [ $t9       <bool> %ebp-45 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #   -879448152(%ebp)  879448104  [ $v1       <array 17 of <array 53 of <array 60 of <array 49 of <array 83 of <int>>>>>> %ebp-879448152 ]
    #   -926959536(%ebp)  47511384  [ $v2       <array 39 of <array 6 of <array 47 of <array 24 of <array 45 of <int>>>>>> %ebp-926959536 ]
    #   -1600672200(%ebp)  673712664  [ $v3       <array 36 of <array 72 of <array 38 of <array 90 of <array 76 of <char>>>>>> %ebp-1600672200 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1600672188, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $400168047, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-879448152(%ebp)     # local array 'v1': 5 dimensions
    movl    $17,-879448148(%ebp)    #   dimension 1: 17 elements
    movl    $53,-879448144(%ebp)    #   dimension 2: 53 elements
    movl    $60,-879448140(%ebp)    #   dimension 3: 60 elements
    movl    $49,-879448136(%ebp)    #   dimension 4: 49 elements
    movl    $83,-879448132(%ebp)    #   dimension 5: 83 elements
    movl    $5,-926959536(%ebp)     # local array 'v2': 5 dimensions
    movl    $39,-926959532(%ebp)    #   dimension 1: 39 elements
    movl    $6,-926959528(%ebp)     #   dimension 2: 6 elements
    movl    $47,-926959524(%ebp)    #   dimension 3: 47 elements
    movl    $24,-926959520(%ebp)    #   dimension 4: 24 elements
    movl    $45,-926959516(%ebp)    #   dimension 5: 45 elements
    movl    $5,-1600672200(%ebp)    # local array 'v3': 5 dimensions
    movl    $36,-1600672196(%ebp)   #   dimension 1: 36 elements
    movl    $72,-1600672192(%ebp)   #   dimension 2: 72 elements
    movl    $38,-1600672188(%ebp)   #   dimension 3: 38 elements
    movl    $90,-1600672184(%ebp)   #   dimension 4: 90 elements
    movl    $76,-1600672180(%ebp)   #   dimension 5: 76 elements

    # function body
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    leal    -1600672200(%ebp), %eax #   1:     &()    t2 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  3 <- t2
    pushl   %eax                   
    movl    $78817, %eax            #   3:     div    t3 <- 78817, 28047
    movl    $28047, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     mul    t4 <- t3, 98294
    movl    $98294, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t5 <- t4, 28063
    movl    $28063, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     div    t6 <- t5, 76085
    movl    $76085, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     param  2 <- t6
    pushl   %eax                   
    leal    -926959536(%ebp), %eax  #   8:     &()    t7 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     param  1 <- t7
    pushl   %eax                   
    leal    -879448152(%ebp), %eax  #  10:     &()    t8 <- v1
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  11:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  12:     call   t9 <- f0
    addl    $16, %esp              
    movb    %al, -45(%ebp)         
    movl    $76175, %eax            #  13:     if     76175 = 80398 goto 3_if_true
    movl    $80398, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #  14:     goto   4_if_false
l_f1_3_if_true:
    call    dummyCHARfunc           #  16:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  17:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_2                  #  18:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $1600672188, %esp       # remove locals
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
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 21 of <array 88 of <array 46 of <array 52 of <array 23 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 38 of <array 40 of <array 91 of <array 64 of <array 2 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #    -16(%ebp)   1  [ $v3       <bool> %ebp-16 ]

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
    jmp     l_f2_2                  #   0:     goto   2
    jmp     l_f2_2                  #   1:     goto   2
    jmp     l_f2_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   8:     return t2
    jmp     l_f2_exit              
    jmp     l_f2_13                 #   9:     goto   13
    jmp     l_f2_8                  #  10:     goto   8
l_f2_13:
    jmp     l_f2_8                  #  12:     goto   8
    jmp     l_f2_8                  #  13:     goto   8
l_f2_8:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_10                 #  16:     goto   10
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_10:
    movzbl  -14(%ebp), %eax         #  19:     return t3
    jmp     l_f2_exit              
    movl    $1, %eax                #  20:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_18                 #  21:     goto   18
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_18:
    movzbl  -15(%ebp), %eax         #  24:     assign v3 <- t4
    movb    %al, -16(%ebp)         

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 >= 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyProcedure          #   5:     call   dummyProcedure
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    movl    $0, %eax                #   8:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
    jmp     l_test_9                #  10:     goto   9
l_test_9:
    jmp     l_test_12               #  12:     goto   12
l_test_12:
    movl    $99, %eax               #  14:     if     99 >= 100 goto 16_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_16_if_true      
    jmp     l_test_17_if_false      #  15:     goto   17_if_false
l_test_16_if_true:
    jmp     l_test_15               #  17:     goto   15
l_test_17_if_false:
l_test_15:
    jmp     l_test_6                #  20:     goto   6
l_test_8_if_false:
l_test_6:
    call    ReadInt                 #  23:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        

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
