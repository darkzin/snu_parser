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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 13 of <array 60 of <array 39 of <array 57 of <array 96 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 50 of <array 86 of <array 58 of <array 87 of <int>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $53537, %eax            #   0:     assign v2 <- 53537
    movl    %eax, -24(%ebp)        
    movl    $97, %eax               #   1:     return 97
    jmp     l_f0_exit              
    movl    $28501, %eax            #   2:     add    t0 <- 28501, 88215
    movl    $88215, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     add    t1 <- t0, 29659
    movl    $29659, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $27577, %eax            #   4:     if     27577 < t1 goto 3_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   5:     goto   4_if_false
l_f0_3_if_true:
l_f0_7_while_cond:
    jmp     l_f0_6                  #   8:     goto   6
    jmp     l_f0_7_while_cond       #   9:     goto   7_while_cond
l_f0_6:
    jmp     l_f0_2                  #  11:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 9 of <array 50 of <array 86 of <array 58 of <array 87 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 13 of <array 60 of <array 39 of <array 57 of <array 96 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t9       <char> %ebp-49 ]
    #   -166458316(%ebp)  166458264  [ $v0       <array 13 of <array 60 of <array 39 of <array 57 of <array 96 of <char>>>>>> %ebp-166458316 ]
    #   -947579140(%ebp)  781120824  [ $v1       <array 9 of <array 50 of <array 86 of <array 58 of <array 87 of <int>>>>>> %ebp-947579140 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $947579128, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $236894782, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-166458316(%ebp)     # local array 'v0': 5 dimensions
    movl    $13,-166458312(%ebp)    #   dimension 1: 13 elements
    movl    $60,-166458308(%ebp)    #   dimension 2: 60 elements
    movl    $39,-166458304(%ebp)    #   dimension 3: 39 elements
    movl    $57,-166458300(%ebp)    #   dimension 4: 57 elements
    movl    $96,-166458296(%ebp)    #   dimension 5: 96 elements
    movl    $5,-947579140(%ebp)     # local array 'v1': 5 dimensions
    movl    $9,-947579136(%ebp)     #   dimension 1: 9 elements
    movl    $50,-947579132(%ebp)    #   dimension 2: 50 elements
    movl    $86,-947579128(%ebp)    #   dimension 3: 86 elements
    movl    $58,-947579124(%ebp)    #   dimension 4: 58 elements
    movl    $87,-947579120(%ebp)    #   dimension 5: 87 elements

    # function body
    leal    -947579140(%ebp), %eax  #   0:     &()    t0 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t0
    pushl   %eax                   
    leal    -166458316(%ebp), %eax  #   2:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #   4:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movl    $63593, %eax            #   5:     mul    t3 <- 63593, 22756
    movl    $22756, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     mul    t4 <- t3, 85190
    movl    $85190, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     div    t5 <- t4, 29351
    movl    $29351, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     sub    t6 <- t5, 85601
    movl    $85601, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     sub    t7 <- t6, 33351
    movl    $33351, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  10:     add    t8 <- t7, 45420
    movl    $45420, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  11:     return t8
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  12:     call   t9 <- dummyCHARfunc
    movb    %al, -49(%ebp)         

l_f1_exit:
    # epilogue
    addl    $947579128, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <ptr(4) to <array 9 of <array 50 of <array 86 of <array 58 of <array 87 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 13 of <array 60 of <array 39 of <array 57 of <array 96 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 37 of <array 20 of <array 57 of <array 26 of <array 92 of <char>>>>>>> %ebp+16 ]
    #   -166458288(%ebp)  166458264  [ $v3       <array 13 of <array 60 of <array 39 of <array 57 of <array 96 of <char>>>>>> %ebp-166458288 ]
    #   -947579112(%ebp)  781120824  [ $v4       <array 9 of <array 50 of <array 86 of <array 58 of <array 87 of <int>>>>>> %ebp-947579112 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $947579100, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $236894775, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-166458288(%ebp)     # local array 'v3': 5 dimensions
    movl    $13,-166458284(%ebp)    #   dimension 1: 13 elements
    movl    $60,-166458280(%ebp)    #   dimension 2: 60 elements
    movl    $39,-166458276(%ebp)    #   dimension 3: 39 elements
    movl    $57,-166458272(%ebp)    #   dimension 4: 57 elements
    movl    $96,-166458268(%ebp)    #   dimension 5: 96 elements
    movl    $5,-947579112(%ebp)     # local array 'v4': 5 dimensions
    movl    $9,-947579108(%ebp)     #   dimension 1: 9 elements
    movl    $50,-947579104(%ebp)    #   dimension 2: 50 elements
    movl    $86,-947579100(%ebp)    #   dimension 3: 86 elements
    movl    $58,-947579096(%ebp)    #   dimension 4: 58 elements
    movl    $87,-947579092(%ebp)    #   dimension 5: 87 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   4:     goto   1_while_cond
    movl    $81302, %eax            #   5:     assign v0 <- 81302
    movl    %eax, 8(%ebp)          
    movl    $43, %eax               #   6:     if     43 = 46572 goto 11_if_true
    movl    $46572, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #   7:     goto   12_if_false
l_f2_11_if_true:
    leal    -947579112(%ebp), %eax  #   9:     &()    t0 <- v4
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     param  1 <- t0
    pushl   %eax                   
    leal    -166458288(%ebp), %eax  #  11:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  13:     call   t2 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
l_f2_16_while_cond:
    movl    $47392, %eax            #  15:     if     47392 >= 36765 goto 17_while_body
    movl    $36765, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_17_while_body     
    jmp     l_f2_15                 #  16:     goto   15
l_f2_17_while_body:
    jmp     l_f2_16_while_cond      #  18:     goto   16_while_cond
l_f2_15:
l_f2_20_while_cond:
    movl    $74975, %eax            #  21:     if     74975 # 59548 goto 21_while_body
    movl    $59548, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_21_while_body     
    jmp     l_f2_19                 #  22:     goto   19
l_f2_21_while_body:
    jmp     l_f2_20_while_cond      #  24:     goto   20_while_cond
l_f2_19:
    jmp     l_f2_10                 #  26:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $947579100, %esp        # remove locals
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
    jmp     l_test_exit            
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_4_if_false       #   2:     goto   4_if_false
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $61136, %eax            #   6:     assign v1 <- 61136
    movl    %eax, v1               
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:

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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
